//
//  ViewController.m
//  ViewTest
//
//  Created by 吕晴阳 on 2018/10/16.
//  Copyright © 2018 Lv Qingyang. All rights reserved.
//

#import "ViewController.h"
#import "AuthorView.h"

@interface ViewController ()
@property (nonatomic, strong) AuthorView *authorView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AuthorView *authorView= [AuthorView new];
    authorView.frame= CGRectMake(0, 100, 308, 100);
    authorView.name=@"Qingyang";
    authorView.profile= [UIImage imageNamed:@"head.jpeg"];

    [self.view addSubview:authorView];
    self.authorView=authorView;

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    self.authorView.name=@"特效师:吕晴阳";
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
