//
//  ViewController.m
//  ActivityIndicatior
//
//  Created by SDT-1 on 2014. 1. 3..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicatiorIB;
@property (strong, nonatomic) UIActivityIndicatorView *indicatorCode;

@end

@implementation ViewController
- (IBAction)startIndicator:(id)sender {
    [self.indicatiorIB startAnimating];
    [self.indicatorCode performSelector:@selector(startAnimating) withObject:nil afterDelay:0.3];
}
- (IBAction)stopIndicator:(id)sender {
    [self.indicatiorIB stopAnimating];
    [self.indicatorCode performSelector:@selector(stopAnimating) withObject:nil afterDelay:0.7];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.indicatorCode = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    self.indicatorCode.hidesWhenStopped = YES;
    self.indicatorCode.center = CGPointMake(160, 270);
    
    [self.view addSubview:self.indicatorCode];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
