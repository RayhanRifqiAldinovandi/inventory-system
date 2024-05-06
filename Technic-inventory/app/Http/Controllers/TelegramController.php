<?php

namespace App\Http\Controllers;


use Telegram\Bot\Laravel\Facades\Telegram;
use Illuminate\Http\Request;

class TelegramController extends Controller
{
    //
    public function updatedActivity()
    {
        $activity = Telegram::getUpdates();
        dd($activity);
    }
}
