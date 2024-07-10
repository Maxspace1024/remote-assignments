package com.example.assignment3;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.sql.SQLException;

@SpringBootTest
class Assignment3ApplicationTests {

    Assignment3ApplicationTests() throws SQLException {
    }

    @Test
    void testJsonObject() throws JSONException {
//        JSONObject json = new JSONObject();
        JSONArray arr = new JSONArray("[108,2,3,4]");
        JSONObject json = new JSONObject("");
        System.out.println(arr.get(0));
    }

    @Test
	void contextLoads() {
        genArticleSQL();
	}

    String genTitle() {
        StringBuilder res = new StringBuilder();
        for(int i=0; i<7;i++) {
            res.append((char) Math.floor(Math.random() * 26 + 97));
        }
        return res.toString();
    }

    String genContent() {
        StringBuilder res = new StringBuilder();
        for(int i=0; i<50;i++) {
            res.append((char) Math.floor(Math.random() * 26 + 97));
        }
        return res.toString();
    }

    void genArticleSQL() {
        for(int i=0;i<60;i++) {
            String sql = String.format("(default, '%s', '%s', %d),", genTitle(), genContent(), i%2 + 1);
            System.out.println(sql);
        }
    }
}
