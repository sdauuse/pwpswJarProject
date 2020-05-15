package com.pwpew.utils;

/**
 * @author miaoyin
 * @date 2020/5/14 - 12:12
 * @commet:
 */
public class CommonUtil {

    public static int getWordCount(String s)
    {
        int length = 0;
        for(int i = 0; i < s.length(); i++)
        {
            int ascii = Character.codePointAt(s, i);
            if(ascii >= 0 && ascii <=255)
                length++;
            else
                length += 2;

        }
        return length;

    }
}
