//
//  TableViewController.m
//  UITableViewController
//
//  Copyright © 2016 Guilherme Pola. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Populando nosso array
    self.arrayNome = @[@"Gervásio", @"Gueri-Gueri", @"ASdrub0l", @"Prequepá"];
    self.arraySeries = @[@"Narcos", @"Demolidor", @"House of Cards", @"Sense 8", @"Breaking Bad"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 2;
}

//Método que define a qtde de linhas para cada seção
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    //verificamos qual section é, para colocar a qtde de linhas do nosso array
    if (section == 0) {
        return self.arrayNome.count;
    }else{
        return self.arraySeries.count;
    }
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{


    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"celula"];

    //Verificando se a célula já está em memória
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"celula"];
    }
    
    //NSIndexPath -  é um tipo de dado que contém tanto a linha como a seção
    //Verificando qual a seção
    if (indexPath.section == 0) {
        
        cell.textLabel.text = [self.arrayNome objectAtIndex:indexPath.row];
        
    }else{
        cell.textLabel.text = self.arraySeries[indexPath.row];

    }
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    if (section == 0) {
        return @"É Nome";
    }else{
        return @"É Serie";
    }
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    NSLog(@"ROW: %i SECTION: %i", indexPath.row, indexPath.section);

}
@end




