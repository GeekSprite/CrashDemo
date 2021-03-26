//
//  OTIndexViewController.m
//  CrashDemo
//
//  Created by geeksprite on 2020/10/30.
//

#import "OTIndexViewController.h"
@import Toast;
@import AFNetworking;
@import SDWebImage;
#import <GPLoadingMore/GPLoadingMoreView.h>

@interface OTIndexViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (nonatomic, strong) GPLoadingMoreView *moreView;

@end

@implementation OTIndexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"首页";
    
    [self.imgView sd_setImageWithURL:[NSURL URLWithString:@"https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=282034201,2033919870&fm=15&gp=0.jpg"]];
    
    [self.view addSubview:self.moreView];
    self.moreView.frame = CGRectMake(100, 100, 68, 68);
    [self.moreView startAnimating];
    
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
    
//    NSMutableArray *arr = [NSMutableArray array];
//
//    [arr performSelector:@selector(nibbles__)];
//
//    NSLog(@"performSelector");
    
    
    [self.view makeToast:@"buttonAction"];
    
    
    NSURLSessionTask *task = [AFHTTPSessionManager.manager GET:@"https://cdn.cnbj1.fds.api.mi-img.com/dove/release/20/weex-page-universal/test-template/ios.tar.zip" parameters:@{} headers:@{} progress:^(NSProgress * _Nonnull downloadProgress) {
        
        NSLog(@"downloadProgress + %@", @(downloadProgress.completedUnitCount));
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"success + %@", responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"failure + %@", error);
    }];
    
    [task resume];
    
}


- (GPLoadingMoreView *)moreView {
    if (!_moreView) {
        _moreView = [[GPLoadingMoreView alloc] init];
    }
    return _moreView;
}

@end
