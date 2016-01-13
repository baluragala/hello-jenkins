//
//  ViewController.m
//  hello jenkins
//
//  Created by MOKSHA on 12/01/16.
//  Copyright © 2016 MOKSHA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSString *configuration = [[mainBundle infoDictionary] objectForKey:@"Configuration"];
    
    // Load Configurations
    NSString *path = [mainBundle pathForResource:@"Configurations" ofType:@"plist"];
    NSDictionary *configurations = [[NSDictionary dictionaryWithContentsOfFile:path] objectForKey:configuration];
    
    NSLog(@"Current Configuration > %@", configuration);
    NSLog(@"Current Welcome Title > %@", [configurations objectForKey:@"TitleWelcome"]);
    

    
    self.lblTitleWelcome.text = [configurations objectForKey:@"TitleWelcome"] ;
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
