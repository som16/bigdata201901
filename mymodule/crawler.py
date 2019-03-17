# -*- coding: utf-8 -*-
"""
Created on Sun Mar 17 15:07:26 2019

@author: PC
"""

#1. 네트워크 연결: requests
#2. 결과문서를 분석: bs4

import requests
from bs4 import BeautifulSoup

def crawl(url):
    print(url, ": crawl");
    result = requests.get(url);
    body_content = BeautifulSoup(result.content, "html.parser");
    return body_content;
