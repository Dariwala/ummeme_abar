<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Session;
class PhoneEmailIcon
{
    public static function handlePhoneandEmail($str,$is_bangla,$b_str)
    {        
        if($is_bangla == TRUE)
        {
            $lines = explode("\n",$str);
            $i = 0;
            foreach($lines as $line){
                $matches_email = array();
                $matches_mobile = array();
                $matches_tnt = array();
                $matches_emergency = array();
                preg_match_all('/[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z.]{2,5}/', $line, $matches_email);
                preg_match_all('/\+88-{0,1}01[0-9]{3}-{0,1}[0-9]{6}/', $line, $matches_mobile);
                preg_match_all('/\+88-{0,1}([0-9]{11}|[0-9]{5}|[0-9]{3})/', $line, $matches_emergency);
                preg_match_all('/\+88-{0,1}02-{0,1}[0-9]{7}/', $line, $matches_tnt);
                if(count($matches_mobile[0]) > 0){
                    foreach($matches_mobile[0] as $match){
                        $b_str = str_replace(BanglaConverter::en2bn($match),'<a href="tel:'.$match.'">'.BanglaConverter::en2bn($match).'</a>',$b_str);
                    }
                }
                else if(count($matches_email[0]) > 0){
                    foreach($matches_email[0] as $match){
                        $b_str = str_replace(BanglaConverter::en2bn($match),'<a href="mailto:'.$match.'">'.$match.'</a>',$b_str);
                    }
                }
                else if(count($matches_emergency[0]) > 0){
                    foreach($matches_emergency[0] as $match){
                        $b_str = str_replace(BanglaConverter::en2bn($match),'<a href="tel:'.substr($match,4).'">'.BanglaConverter::en2bn(substr($match,4)).'</a>',$b_str);
                    }
                }
                else if(count($matches_tnt[0]) > 0){
                    foreach($matches_tnt[0] as $match){
                        $b_str = str_replace(BanglaConverter::en2bn($match),'<a href="tel:'.$match.'">'.BanglaConverter::en2bn($match).'</a>',$b_str);
                    }
                }
                $i = $i + 1;
            }
            //$str = implode('',$lines);
            return $b_str;
        }
        else
        {
            $lines = explode("\n",$str);
            $i = 0;
            foreach($lines as $line){
                $matches_email = array();
                $matches_mobile = array();
                $matches_tnt = array();
                $matches_emergency = array();
                preg_match_all('/[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z.]{2,5}/', $line, $matches_email);
                preg_match_all('/\+88-{0,1}01[0-9]{3}-{0,1}[0-9]{6}/', $line, $matches_mobile);
                preg_match_all('/\+88-{0,1}([0-9]{11}|[0-9]{5}|[0-9]{3})/', $line, $matches_emergency);
                preg_match_all('/\+88-{0,1}02-{0,1}[0-9]{7}/', $line, $matches_tnt);
                if(count($matches_mobile[0]) > 0){
                    foreach($matches_mobile[0] as $match){
                        $lines[$i] = str_replace($match,'<a href="tel:'.$match.'">'.$match.'</a>',$lines[$i]);
                    }
                }
                else if(count($matches_email[0]) > 0){
                    foreach($matches_email[0] as $match){
                        $lines[$i] = str_replace($match,'<a href="mailto:'.$match.'">'.$match.'</a>',$lines[$i]);
                    }
                }
                else if(count($matches_emergency[0]) > 0){
                    foreach($matches_emergency[0] as $match){
                        $lines[$i] = str_replace($match,'<a href="tel:'.substr($match,4).'">'.substr($match,4).'</a>',$lines[$i]);
                    }
                }
                else if(count($matches_tnt[0]) > 0){
                    foreach($matches_tnt[0] as $match){
                        $lines[$i] = str_replace($match,'<a href="tel:'.$match.'">'.$match.'</a>',$lines[$i]);
                    }
                }
                $i = $i + 1;
            }
            $str = implode('',$lines);
            return $str;
        }        
    }
}