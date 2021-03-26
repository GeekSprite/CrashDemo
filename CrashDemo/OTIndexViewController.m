//
//  OTIndexViewController.m
//  CrashDemo
//
//  Created by geeksprite on 2020/10/30.
//

#import "OTIndexViewController.h"

@interface OTIndexViewController ()

@end

@implementation OTIndexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"首页";
    // Do any additional setup after loading the view from its nib.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)buttonAction:(id)sender {
    
    NSMutableArray *arr = [NSMutableArray array];
    
    [arr performSelector:@selector(nibbles__)];
    
    NSLog(@"performSelector");
}

@end
