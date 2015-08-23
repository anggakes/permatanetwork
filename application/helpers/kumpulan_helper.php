<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

if ( ! function_exists('object_to_array'))
{
	function object_to_array($result,$field,$key=null){
		$array = array();
			foreach ($result as $value)
			{
				if($key==null){
					$array[$value->$field]=$value->$field;
				}else{
					$array[$value->$key]=$value->$field;
				}
			}
		return $array;
	}
}

if ( ! function_exists('rupiah'))
{
	function rupiah($nilai){

		return number_format($nilai,0,'.',',');
	}
}

if ( ! function_exists('limitWord'))
{
function limitWord($string, $word_limit) {
        $words = explode(" ", $string);
        if($words>$word_limit){
       		return implode(" ", array_splice($words, 0, $word_limit))." ...";
    	}

    	return false;
    }
}

if ( ! function_exists('currConverter'))
{
function currConverter($amount) {
        $cc = unserialize($_SESSION['login_cc']);
    	return $cc->convert($amount);
    }
}