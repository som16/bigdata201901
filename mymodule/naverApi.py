# -*- coding: utf-8 -*-
"""
Created on Sun Mar 17 15:47:15 2019

@author: PC
"""

import requests

def get1000Result(keyword):
    list = []
    for num in range(0, 10):
        list = list + call(keyword, num*100 + 1)['items']
    return list    

def call(keyword, start): # 검색어, page값
    url = "https://openapi.naver.com/v1/search/blog?query=" + keyword + "&display=100" + "&start=" + str(start)  #str() 스트링으로 변환
    
    result = requests.get(url = url, 
                          headers={"X-Naver-Client-Id": "CR8nxm17kB4hTLpMi7pb", 
                                   "X-Naver-Client-Secret": "bDGkvol0G_"
                          })
    print(result);
    return result.json();