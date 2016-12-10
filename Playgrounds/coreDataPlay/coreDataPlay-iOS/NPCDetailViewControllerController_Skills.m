//
//  NPCDetailViewControllerController_Skills.m
//  coreDataPlay
//
//  Created by Alex Maguire on 12/5/16.
//  Copyright © 2016 Sir Rigel. All rights reserved.
//

#import "NPCDetailViewControllerController_Skills.h"
#import "baseSkillCell.h"
#import "testFunctions.h"
@implementation NPCDetailViewControllerController_Skills{
}
@synthesize toEdit;
-(void)viewDidLoad{
    [super viewDidLoad];
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return toEdit.skills.count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //static NSString *CellIdentifier=@"skill";
    //baseSkillCell *cell=(baseSkillCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    //if(cell==nil){
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"basicSkillCell" owner:self options:nil];
        baseSkillCell *cell=[nib objectAtIndex:0];
    //}
    cell.toEdit=toEdit;
    cell.skillReference=toEdit.skills[[indexPath row]];
    [cell refreshSkillInfo];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:false];//right ... we don't want to select a row ...
}
@end
