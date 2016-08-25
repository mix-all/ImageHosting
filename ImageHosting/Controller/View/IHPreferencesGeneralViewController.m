//
//  IHPreferencesGeneralViewController.m
//  ImageHosting
//
//  Created by chars on 16/8/19.
//  Copyright © 2016年 chars. All rights reserved.
//

#import "IHPreferencesGeneralViewController.h"
#import "IHGeneralManager.h"

@interface IHPreferencesGeneralViewController ()

- (IBAction)systemNotification:(id)sender;

@end

@implementation IHPreferencesGeneralViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
}

- (IBAction)systemNotification:(NSButton *)sender {
    NSLog(@"%s %zi", __FUNCTION__, sender.state);
    NSString *noti = sender.state ? @"YES" : @"NO";
    [[IHGeneralManager sharedManager] archiveSystemNotification:noti];
}
@end