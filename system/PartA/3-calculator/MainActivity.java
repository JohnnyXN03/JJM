package com.example.third_program;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    EditText e1, e2;
    TextView res;
    int num1, num2;
    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
    public boolean getNumbers()
    {
        e1 = (EditText)findViewById(R.id.etFirst);

        e2 = (EditText)findViewById(R.id.etSecond);

        res = (TextView)findViewById(R.id.result);

        String s1 = e1.getText().toString();
        String s2 = e2.getText().toString();

        if ((s1.equals(null) && s2.equals(null))
                || (s1.equals("") && s2.equals(""))) {

            String result = "Please enter a value";
            res.setText(result);

            return false;
        }
        else {
            num1 = Integer.parseInt(s1);

            num2 = Integer.parseInt(s2);
        }

        return true;
    }
    public void doSum(View v)
    {
        if (getNumbers()) {
            int sum = num1 + num2;
            res.setText(Integer.toString(sum));
        }
    }

    public void doSub(View v)
    {
        if (getNumbers()) {
            int sum = num1 - num2;
            res.setText(Integer.toString(sum));
        }
    }
    public void doMul(View v)
    {
        if (getNumbers()) {
            int sum = num1 * num2;
            res.setText(Integer.toString(sum));
        }
    }
    public void doDiv(View v)
    {
        if (getNumbers()) {
            double sum = num1 / (num2 * 1.0);
            res.setText(Double.toString(sum));
        }
    }
}