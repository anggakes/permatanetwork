<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

if ( ! function_exists('element'))
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