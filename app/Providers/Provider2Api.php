<?php

namespace App\Providers;

use GuzzleHttp\Client;
use App\Interfaces\ApiProviderInterface;
use App\Models\Jobs;

class Provider2Api implements ApiProviderInterface {
    public function fetchData() {
        // Provider 2 API'sine istek gönderme kodu
        $apiUrl = 'http://www.mocky.io/v2/5d47f235330000623fa3ebf7';
        $client = new Client();

        try {
            $response = $client->request('GET', $apiUrl);

            $data = json_decode($response->getBody(), true);

            foreach ($data as $item) {
                $job = new Jobs();
                $job->title = $item['id'];
                $job->duration = $item['sure'];
                $job->difficulty = $item['zorluk'];
                $job->save();
            }
            return $data;
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
}
