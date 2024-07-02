package org.example;

import java.net.Inet4Address;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello world!");
        int[] res = twoSum(new int[]{1,3,4,5,6,65,76}, 9);
        System.out.println(String.format("[%d, %d]", res[0], res[1]));
    }

    public static int[] twoSum(int[] arr, int target) {
        int i = 0,j = arr.length-1, sum;
        while(i<j) {
            sum = arr[i] + arr[j];
            if ( sum < target) {
                i++;
            } else if (sum > target) {
                j--;
            } else {
                return new int[]{i, j};
            }
        }

        return new int[]{-1, -1};
    }
}