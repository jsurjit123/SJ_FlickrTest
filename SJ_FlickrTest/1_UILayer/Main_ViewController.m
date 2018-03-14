//
//  Main_ViewController.m
//  SJ_FlickrTest
//
//  Created by Surjit Joshi on 13/03/18.
//  Copyright © 2018 Surjit Joshi. All rights reserved.
//

#import "Main_ViewController.h"
#import "Details_ViewController.h"

@interface Main_ViewController ()
{
    NSMutableArray *imagesArray;
    IBOutlet UICollectionView *collectionView;
    
    NSIndexPath *selectedIndexPath;
}


@end

@implementation Main_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([CustomCollectionCell class]) bundle:nil] forCellWithReuseIdentifier:@"CustomCollectionCell"];
    
    imagesArray = [[NSMutableArray alloc] init];
    
    [imagesArray addObject:@"LL1.png"];
    [imagesArray addObject:@"LL2.png"];
    [imagesArray addObject:@"LL3.png"];
    [imagesArray addObject:@"LL4.png"];
    [imagesArray addObject:@"LL5.png"];
    [imagesArray addObject:@"LL6.png"];
    
    //[self searchFlickrPhotos : @"bmw"];
}

-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    selectedIndexPath = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 130;
}

-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"Header";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    if(cell != NULL)
        cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CustomCell"];
    
    //cell.textLabel.text = [NSString stringWithFormat:@"Cell # Section-%ld, Row-%ld", (long)indexPath.section, (long)indexPath.row];
    
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [imagesArray count];
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"CustomCollectionCell";
    
    CustomCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    cell.cellThumbnail.image =  [UIImage imageNamed:[imagesArray objectAtIndex:indexPath.row]];
    cell.cellThumbnail.layer.borderWidth = 2;
    cell.cellThumbnail.layer.borderColor = [UIColor grayColor].CGColor;
    
    cell.imageTitleLabel.text = [imagesArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    selectedIndexPath = indexPath;
    [self performSegueWithIdentifier:@"MainToDetailsSegue" sender:self];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    Details_ViewController *details_ViewController = segue.destinationViewController;
    details_ViewController.selectedImagePath = [imagesArray objectAtIndex:selectedIndexPath.row];
    details_ViewController.selectedImageTitle = [imagesArray objectAtIndex:selectedIndexPath.row];
}


@end
