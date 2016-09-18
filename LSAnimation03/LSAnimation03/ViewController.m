//
//  ViewController.m
//  LSLearnAni06
//
//  Created by xiaoT on 16/4/4.
//  Copyright © 2016年 赖三聘. All rights reserved.
//

#import "ViewController.h"
#import "LS_jumpStarView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet LS_jumpStarView *jumpView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.jumpView layoutIfNeeded];
    self.jumpView.markImage = [UIImage imageNamed:@"icon_star_incell"];
    self.jumpView.non_markImage = [UIImage imageNamed:@"blue_dot"];
    self.jumpView.state = Mark;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)jumpClick:(id)sender {
    [_jumpView animation];
}

@end
