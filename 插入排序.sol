// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract InsertionSort {
    
    // 存储排序后的数组
    uint[] public sortedArray;

    // 插入排序函数
    function insertionSort(uint[] memory arr) public returns (uint[] memory) {
        uint length = arr.length;
        
        // 插入排序算法
        for (uint i = 1; i < length; i++) {
            uint key = arr[i];
            uint j = i - 1;
            for (uint k = 0;k <= j;k++){
                if(arr[k] > key){
                    arr[i] = arr[k];
                    arr[k] = key;
                    key = arr[i];
                }
            }
        }

        sortedArray = arr; // 存储排序后的数组
        return arr;
    }

    // 提供一个函数输入数组并返回排序后的结果
    function sortArray(uint[] memory inputArray) public returns (uint[] memory) {
        return insertionSort(inputArray);
    }
    
    // 获取排序后的数组
    function getSortedArray() public view returns (uint[] memory) {
        return sortedArray;
    }
}
