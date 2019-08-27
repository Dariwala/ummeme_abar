<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Redirect;

use Session;


class PhoneEmailIcon
{
    public static function handlePhoneandEmail($str,$is_bangla,$b_str)
    {
        $matches = array();

        

        if($is_bangla == TRUE)
        {
            // returns all results in array $matches
            preg_match_all('/[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z.]{2,5}/', $b_str, $matches);
            $matches = $matches[0];

            foreach($matches as $match)
            {
                $b_str = str_replace($match,$match.'<a href="mailto:'.$match.'"><i class="fa fa-envelope-o" style="margin-left:5px;"></i></a>',$b_str);
            }

            $matches = array();

            // returns all results in array $matches
            preg_match_all('/\+88-{0,1}01[0-9]{3}-{0,1}[0-9]{6}/', $str, $matches);
            $matches = $matches[0];

            foreach($matches as $match)
            {
                $b_str = str_replace(BanglaConverter::en2bn($match),BanglaConverter::en2bn($match).'<a href="tel:'.$match.'"><i class="fa fa-phone" style="margin-left:5px;"></i></a>',$b_str);
            }

            // returns all results in array $matches -hotline
            preg_match_all('/: [0-9]+/', $str, $matches);
            $matches = $matches[0];
            foreach($matches as $match)
            {
                $h_number = substr($match, 2);
                $b_str = str_replace(BanglaConverter::en2bn($match),BanglaConverter::en2bn($match).'<a href="tel:'.$h_number.'"><i class="fa fa-phone" style="margin-left:5px;"></i></a>',$b_str);
            }
            return $b_str;
        }
        else
        {
            // returns all results in array $matches - email
            preg_match_all('/[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z.]{2,5}/', $str, $matches);
            $matches = $matches[0];

            foreach($matches as $match)
            {
                $str = str_replace($match,$match.'<a href="mailto:'.$match.'"><i class="fa fa-envelope-o" style="margin-left:5px;"></i></a>',$str);
            }
            $matches = array();

            // returns all results in array $matches
            preg_match_all('/\+88-{0,1}01[0-9]{3}-{0,1}[0-9]{6}/', $str, $matches);
            $matches = $matches[0];
            foreach($matches as $match)
            {
                $str = str_replace($match,$match.'<a href="tel:'.$match.'"><i class="fa fa-phone" style="margin-left:5px;"></i></a>',$str);
            }
            
            // returns all results in array $matches
            preg_match_all('/: [0-9]+/', $str, $matches);
            $matches = $matches[0];
            foreach($matches as $match)
            {
                $h_number = substr($match, 2);
                $str = str_replace($match,$match.'<a href="tel:'.$h_number.'"><i class="fa fa-phone" style="margin-left:5px;"></i></a>',$str);
            }
            return $str;

        }

        
    }
}