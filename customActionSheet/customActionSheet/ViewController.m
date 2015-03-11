//
//  ViewController.m
//  customActionSheet
//
//  Created by Robert on 15/3/11.
//  Copyright (c) 2015年 NationSky. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (nonatomic, strong) customActionSheet *actionSheet;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.actionSheet = [[customActionSheet alloc] initWithTitle:nil
                                                       delegate:self
                                              cancelButtonTitle:@"取消"
                                         destructiveButtonTitle:nil
                                              otherButtonTitles:@"1",@"2", nil];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.actionSheet showInView:self.view];
}
-(void)willPresentActionSheet:(UIActionSheet *)actionSheet{
    NSUInteger count = actionSheet.subviews.count;
}
@end
