//
//  ViewController.m
//  NSMutableDictionary
//
//  Copyright © 2016 Guilherme Pola. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    NSMutableDictionary *dicMutavel =
    [[NSMutableDictionary alloc]initWithObjectsAndKeys:@"Guilherme", @"nome", nil];
    
    NSLog(@"dic: %@", dicMutavel);
    
    [dicMutavel setObject:@"verdes" forKey:@"olhos"];
    NSLog(@"Dic: %@", dicMutavel);
    
    [dicMutavel removeObjectForKey:@"olhos"];
    NSLog(@"Dic: %@", dicMutavel);
    
    [dicMutavel removeAllObjects];
    NSLog(@"Dic: %@", dicMutavel);
    
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
