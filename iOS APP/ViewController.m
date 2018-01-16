//
//  ViewController.m
//  testIosSso
//
//  Created by Tseng Chiang An on 2018/1/5.
//  Copyright © 2018年 Tseng Chiang An. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url = [NSURL URLWithString:@"https://sso.tku.edu.tw/ilife/Data/AndroidSsoLogin.html"];
    //NSURLRequest負責對特定URL進行存取的請求
    //而NSURLRequest與NSURL合作,
    //NSURLRequest即可透過NSURL進行網頁的存取
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //UIWebView負責顯示網頁,
    //loadRequest:方法透過NSURLRequest取得網頁的內容,
    //而後將網頁內容顯示在畫面上。
    [self.displayWebView loadRequest:request];
    //ScalesPageToFit屬性=YES,
    //讓網頁自動調整成螢幕的大小。
    self.displayWebView.scalesPageToFit=YES;
    
}

-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSString *information = [self.displayWebView stringByEvaluatingJavaScriptFromString:@"getSsoLoginToken()"];
    NSLog(@"Web response: %@", information);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
