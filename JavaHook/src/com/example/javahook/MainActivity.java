package com.example.javahook;

//import com.example.javahook.InjectApplication;
import com.example.javahook.R;

import android.app.Activity;
import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Button btn = (Button) findViewById(R.id.button1);
		btn.setOnClickListener(new View.OnClickListener() {

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				WifiManager wifi = (WifiManager) getSystemService(Context.WIFI_SERVICE);
				WifiInfo info = wifi.getConnectionInfo();
				System.out.println("Wifi mac :" + info.getMacAddress());
				System.out.println("test result :" + test());
//				System.out.println("return " + test());			 
				//InjectApplication ia = (InjectApplication) getApplication();
				//System.out.println(ia.test());
			}
		});
	}
	
	private String test() {
		return "real";
	}


}
