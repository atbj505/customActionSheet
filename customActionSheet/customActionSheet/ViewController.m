//
//  ViewController.m
//  customActionSheet
//
//  Created by Robert on 15/3/11.
//  Copyright (c) 2015年 NationSky. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (nonatomic, strong) IBActionSheet *customIBAS;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    btn.center = self.view.center;
    [btn setTitle:@"button" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor blackColor]];
    [btn addTarget:self action:@selector(showActionSheet:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
}
- (void)showActionSheet:(UIButton *)btn {
    NSString *title = @"This is a title!";;
    
    self.customIBAS = [[IBActionSheet alloc] initWithTitle:title delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Some" otherButtonTitles:@"Other", @"Buttons", nil];
    
    self.customIBAS.blurBackground = YES;
    [self.customIBAS setButtonBackgroundColor:[UIColor blackColor]];
    [self.customIBAS setButtonTextColor:[UIColor whiteColor]];
    self.customIBAS.buttonResponse = IBActionSheetButtonResponseHighlightsOnPress;
    [self.customIBAS setButtonHighlightTextColor:[UIColor whiteColor]];
    [self.customIBAS setButtonHighlightBackgroundColor:[UIColor redColor]];
    
    [self.customIBAS showInView:self.view];
}
#pragma mark -
#pragma mark IBActionSheetDelegate
-(void)actionSheet:(IBActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
}
@end
