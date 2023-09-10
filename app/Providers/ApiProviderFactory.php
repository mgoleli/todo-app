<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Interfaces\ApiProviderInterface;
use Illuminate\Support\Facades\Config;
use Illuminate\Http\Exceptions\HttpResponseException;

class ApiProviderFactory extends ServiceProvider
{
    public function register()
    {
        $this->app->bind(ApiProviderInterface::class, function ($app) {
            $providerName = Config::get('api.default'); // Varsayılan API sağlayıcısını al
            $providerConfig = Config::get("api.providers.$providerName");

            if (!$providerConfig || !isset($providerConfig['class'])) { //provider config ve class tanımlamasının varlığını kontrol et
                throw new HttpResponseException(response()->json([
                    'error' => 'Geçersiz veya tanımsız API sağlayıcısı: ' . $providerName,
                ], 400));
            }

            $providerClass = $providerConfig['class'];

            return new $providerClass();
        });
    }
}
