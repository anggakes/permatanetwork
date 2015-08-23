<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class CurrencyConverter {
		
		public $rate = 1;


		public function getRate($from){
			$from_Currency = urlencode($from);
			$to_Currency = urlencode("IDR");
			$get = file_get_contents("https://www.google.com/finance/converter?a=1&from=$from_Currency&to=$to_Currency");
			$get = explode("<span class=bld>",$get);
			$get = explode("</span>",$get[1]);  
			$converted_amount = preg_replace("/[^0-9\.]/", null, $get[0]);

			$this->rate = $converted_amount;

			return $this;
		}

		public function convert($amount){
			return round($amount/$this->rate,2) ;
		}

		public function __get($var)
        {
                return get_instance()->$var;
        }

}