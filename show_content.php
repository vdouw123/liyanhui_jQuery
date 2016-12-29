
<?php
	
	//以PHP数组的形式，但JS不可以直接用
	/*
	require 'config.php';
	$query = mysql_query("SELECT title,content,user,date FROM question ORDER BY date DESC LIMIT 0,5") or die('SQL 错误！');
	while(!!$row = mysql_fetch_array($query, MYSQL_ASSOC)){
		print_r($row);
	}
	mysql_close();
	*/
	
	
	//那么，我们就把保存为json格式
	//但是，可惜的是，中文乱码了。
	/*
	require 'config.php';
	$query = mysql_query("SELECT title,content,user,date FROM question ORDER BY date DESC LIMIT 0,5") or die('SQL 错误！');
	$json = '';
	while(!!$row = mysql_fetch_array($query, MYSQL_ASSOC)){
		$json .= json_encode($row).",";
	}
	echo $json;
	mysql_close();
	*/
	
	/*
	require 'config.php';
	$query = mysql_query("SELECT title,content,user,date FROM question ORDER BY	date DESC LIMIT 0,5") or die('SQL 错误！');
	$json = '';
	while(!!$row = mysql_fetch_array($query,MYSQL_ASSOC)){
		foreach($row as $key => $value){
			$row[$key] = urlencode(str_replace("\n","", $value));
		}
		$json .= urldecode(json_encode($row)).',';
	}
	echo '['.substr($json, 0, strlen($json) - 1).']';		//将json转换为数组（格式完好的JSON字符串）
	mysql_close();
	*/
	
	require 'config.php';	
	$query = mysql_query("SELECT (SELECT COUNT(*) FROM comment WHERE titleid=a.id) AS count,a.id,a.title,a.content,a.user,a.date FROM question a ORDER BY a.date DESC LIMIT 0,10") or die('SQL 错误！');
	$json = '';
	while (!!$row = mysql_fetch_array($query, MYSQL_ASSOC)) {
		foreach ( $row as $key => $value ) {
			$row[$key] = urlencode(str_replace("\n","", $value));
		}
		$json .= urldecode(json_encode($row)).',';
	}
	echo '['.substr($json, 0, strlen($json) - 1).']';
	mysql_close();
	
?>