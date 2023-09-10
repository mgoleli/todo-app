<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Config;
use App\Providers\ApiProviderFactory;


class saveDatastoDatabase extends Command
{
    protected $signature = 'veri:ekle';

    protected $description = 'Providerdan veritabanına veri ekler';

    public function __construct()
    {
        parent::__construct();
    }

    public function handle()
    {
        $selectedProvider = Config::get('api.default'); // Varsayılan API sağlayıcısını al
        $provider = app()->make(Config::get("api.providers.$selectedProvider.class"));

        $provider->fetchData();
        try {
            $this->info('Veriler başarıyla veritabanına kaydedildi.');
        } catch (\Exception $e) {
            $this->error('API ile iletişim sırasında bir hata oluştu: ' . $e->getMessage());
        }
    }
}
