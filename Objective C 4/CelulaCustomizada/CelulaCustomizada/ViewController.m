//
//  ViewController.m
//  CelulaCustomizada
//
//  Copyright © 2016 Guilherme Pola. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.arrayPhotos = [[NSMutableArray alloc]init];
    
    for (int i = 0; i <= 10; i++) {
        NSString *nomePeople = [NSString stringWithFormat:@"people%i.jpg", i];
        NSString *nomeNature = [NSString stringWithFormat:@"nature%i.jpg", i];
        
        UIImage *imagePerfil = [UIImage imageNamed:nomePeople];
        UIImage *imagemPhoto = [UIImage imageNamed:nomeNature];
        
        [self.arrayPhotos addObject:@{@"perfil": imagePerfil, @"photo":imagemPhoto}];

    }
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return self.arrayPhotos.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    CellCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"celula" forIndexPath:indexPath];
   
    cell.labelNome.text = @"Guilherme Pola";
    cell.labelLugar.text = @"Trainning";
    cell.imageViewPerfil.image = [[self.arrayPhotos objectAtIndex:indexPath.row]objectForKey:@"perfil"];
    cell.imageViewPhoto.image = self.arrayPhotos[indexPath.row][@"photo"];
    
    return cell;
    
}
@end







