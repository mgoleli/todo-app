<?php

return [
    'default' => 'provider1', // Varsayılan API sağlayıcı
    'providers' => [
        'provider1' => [
            'class' => App\Providers\Provider1Api::class,
        ],
        'provider2' => [
            'class' => App\Providers\Provider2Api::class,
        ],
        // Diğer API sağlayıcıları buraya eklenebilir
    ],
];