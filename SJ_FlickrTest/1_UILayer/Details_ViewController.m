//
//  Details_ViewController.m
//  SJ_FlickrTest
//
//  Created by Surjit Joshi on 13/03/18.
//  Copyright © 2018 Surjit Joshi. All rights reserved.
//

#import "Details_ViewController.h"

@interface Details_ViewController ()
{
    IBOutlet UIImageView *selectedImageView;
}


@end

@implementation Details_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    selectedImageView.image = [UIImage imageNamed:self.selectedImagePath];
    self.title = self.selectedImageTitle;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
