<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, Mandrill, and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
    ],

    'mandrill' => [
        'secret' => env('MANDRILL_SECRET'),
    ],

    'ses' => [
        'key'    => env('SES_KEY'),
        'secret' => env('SES_SECRET'),
        'region' => 'us-east-1',
    ],

    'stripe' => [
        'model'  => App\User::class,
        'key'    => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
    ],

    'google' => [
        'client_id'     => '476469107115-p9ro6sdtmnpe18o3eh3pmmjfqu2pblus.apps.googleusercontent.com',
        'client_secret' => '7k3XQsch_6x3b67sN2Yy6QSB',
        'redirect'      => 'http://localhost/learn/laravel-socialite/public/callback/google',
    ],

    'facebook' => [
        'client_id'     => '393407644084856',
        'client_secret' => 'cfb2de296ee2647cfaf8a0657d1c0ee9',
        'redirect'      => 'http://localhost/learn/laravel-socialite/public/callback/facebook',
    ],

    'twitter' => [
        'client_id'     => 'JRTiP6iRBg2j0tlC7PLHMHFHM',
        'client_secret' => 'LmchE8WEJkEZ04otKeUXXSGcjvcMwQ71hhbwK3HGZ7NVnCEZOZ',
        'redirect'      => 'http://localhost/learn/laravel-socialite/public/callback/twitter',
    ]

];
