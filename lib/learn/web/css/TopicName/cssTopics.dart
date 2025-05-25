import 'package:learn_smart/modal/topics.dart';
import 'package:learn_smart/learn/web/css/00_css_Reference.dart';
import 'package:learn_smart/learn/web/css/01_Selectors.dart';
import 'package:learn_smart/learn/web/css/02_units.dart';
import 'package:learn_smart/learn/web/css/03_Font.dart';
import 'package:learn_smart/learn/web/css/04_cursor.dart';
import 'package:learn_smart/learn/web/css/05_Background.dart';
import 'package:learn_smart/learn/web/css/06_Box_Sizing.dart';
import 'package:learn_smart/learn/web/css/07_Opacity.dart';
import 'package:learn_smart/learn/web/css/08_Text.dart';
import 'package:learn_smart/learn/web/css/09_List_Styling.dart';
import 'package:learn_smart/learn/web/css/10_Margin.dart';
import 'package:learn_smart/learn/web/css/11_Padding.dart';
import 'package:learn_smart/learn/web/css/13_Border.dart';
import 'package:learn_smart/learn/web/css/14_Display.dart';
import 'package:learn_smart/learn/web/css/15_Table.dart';
import 'package:learn_smart/learn/web/css/16_Parent_and_child.dart';
import 'package:learn_smart/learn/web/css/17_Border_Radius.dart';
import 'package:learn_smart/learn/web/css/18_Colors.dart';
import 'package:learn_smart/learn/web/css/19_Box_Shadow.dart';
import 'package:learn_smart/learn/web/css/20_chess.dart';
import 'package:learn_smart/learn/web/css/21_Layout.dart';
import 'package:learn_smart/learn/web/css/22_Visibility.dart';
import 'package:learn_smart/learn/web/css/23_Z_Index.dart';
import 'package:learn_smart/learn/web/css/24_Outline.dart';
import 'package:learn_smart/learn/web/css/25_Min_and_max_H.dart';
import 'package:learn_smart/learn/web/css/26_Min_and_Max_W.dart';
import 'package:learn_smart/learn/web/css/27_Overflow.dart';
import 'package:learn_smart/learn/web/css/28_Column.dart';
import 'package:learn_smart/learn/web/css/29_Transition.dart';
import 'package:learn_smart/learn/web/css/30_Float_and_Clear.dart';
import 'package:learn_smart/learn/web/css/31_Vertical_Center.dart';
import 'package:learn_smart/learn/web/css/33_Basic_Code_Setup.dart';
import 'package:learn_smart/learn/web/css/34_flex_inlineFlex.dart';
import 'package:learn_smart/learn/web/css/35_Flex_Direction.dart';
import 'package:learn_smart/learn/web/css/36_Flex_Wrap.dart';
import 'package:learn_smart/learn/web/css/37_Flex_flow.dart';
import 'package:learn_smart/learn/web/css/38_f_Gap.dart';
import 'package:learn_smart/learn/web/css/39_Justify_Content.dart';
import 'package:learn_smart/learn/web/css/40_Align_items.dart';
import 'package:learn_smart/learn/web/css/41_Align_Content.dart';
import 'package:learn_smart/learn/web/css/42_Flex_Order.dart';
import 'package:learn_smart/learn/web/css/43_Flex_Grow.dart';
import 'package:learn_smart/learn/web/css/44_Flex_Shrink.dart';
import 'package:learn_smart/learn/web/css/45_Flex_Basis.dart';
import 'package:learn_smart/learn/web/css/46_Flex.dart';
import 'package:learn_smart/learn/web/css/47_align_self.dart';
import 'package:learn_smart/learn/web/css/48_Basic_code_setup_g.dart';
import 'package:learn_smart/learn/web/css/49_grid_inlineGrid.dart';
import 'package:learn_smart/learn/web/css/50_Grid_Template_Columns.dart';
import 'package:learn_smart/learn/web/css/51_Grid_Template_Rows.dart';
import 'package:learn_smart/learn/web/css/52_Grid_Templates.dart';
import 'package:learn_smart/learn/web/css/53_Grid_Gap.dart';
import 'package:learn_smart/learn/web/css/54_Justify_Items.dart';
import 'package:learn_smart/learn/web/css/55_Align_Items.dart';
import 'package:learn_smart/learn/web/css/56_Place_items.dart';
import 'package:learn_smart/learn/web/css/57_Justify_Content.dart';
import 'package:learn_smart/learn/web/css/58_Align_Content.dart';
import 'package:learn_smart/learn/web/css/59_Place_Content.dart';
import 'package:learn_smart/learn/web/css/60_Grid_Auto_Flow.dart';
import 'package:learn_smart/learn/web/css/61_Grid_Column.dart';
import 'package:learn_smart/learn/web/css/62_Grid_Row.dart';
import 'package:learn_smart/learn/web/css/63_Justify_self.dart';
import 'package:learn_smart/learn/web/css/64_Align_self.dart';
import 'package:learn_smart/learn/web/css/65_Place_self.dart';
import 'package:learn_smart/learn/web/css/66_Grid_Template_Area.dart';
import 'package:learn_smart/learn/web/css/67_StylishPreferences.dart';

List<Topics> cssTopics = [
  Topics('CSS and CSS3 Properties Reference Guide', const reference(),
      'Reference Guide'),
  Topics('CSS Selectors', const SelectorsInCss(), 'Select the element'),
  Topics('Type of units', const UnitsCss(), 'Units'),
  Topics('Font Properties', const FontProperty(), 'Property'),
  Topics('Cursor', const CursorProperty(), 'Property'),
  Topics('Background Properties', const BackgroundProperty(), 'Property'),
  Topics('Box Sizing', const BoxSizingProperty(), 'Property'),
  Topics('Opacity', const OpacityProperty(), 'Property'),
  Topics('Text Properties', const TextProperty(), 'Property'),
  Topics('List Styling', const ListStylingProperty(), 'Property'),
  Topics('Margin Properties', const MarginProperty(), 'Property'),
  Topics('Padding Properties', const PaddingProperty(), 'Property'),
  Topics('Border Properties', const BorderProperty(), 'Property'),
  Topics('Display Properties', const DisplayProperty(), 'Property'),
  Topics('CSS Table Properties: Customizing Table Layouts',
      const TableProperty(), 'Property'),
  Topics(
      'Parent and Child Method', const Parent_and_childProperty(), 'Concepts'),
  Topics('Border Radius', const BorderRadiusProperty(), 'Property'),
  Topics('Colors', const ColorsProperty(), 'Property'),
  Topics('Box Shadow', const BoxShadowProperty(), 'Property'),
  Topics('Simple Chess Box', const ChessProperty(), 'Design'),
  Topics('CSS Layout Design', const LayoutDesignProperty(), 'Layout'),
  Topics('Visibility Property', const VisibilityProperty(), 'Property'),
  Topics('Z Index Property', const Z_IndexProperty(), 'Property'),
  Topics('Outline Property', const OutlineProperty(), 'Property'),
  Topics('Minimum Height and Maximum Height Property', const MMHProperty(),
      'Property'),
  Topics('Minimum and Maximum Width Property', const MMWProperty(), 'Property'),
  Topics('Overflow Property', const OverflowProperty(), 'Property'),
  Topics('Column Property', const ColumnProperty(), 'Property'),
  Topics('Transition', const TransitionProperty(), 'Property'),
  Topics('Float and Clear', const Float_and_ClearProperty(), 'Property'),
  Topics('Vertical center', const VerticalCenterProperty(), 'Flex Box'),
  Topics('Basic Code Setup', const Basic_CodeProperty(), 'Flex Box'),
  Topics('Display flex and inline flex', const flexInlineflexProperty(),
      'Flex Box Containers Properties'),
  Topics('Flex Direction', const FlexDirectionProperty(),
      'Flex Box Containers Properties'),
  Topics(
      'Flex Wrap', const FlexWrapProperty(), 'Flex Box Containers Properties'),
  Topics(
      'Flex flow', const FlexflowProperty(), 'Flex Box Containers Properties'),
  Topics('Flex Box Gap', const FlexBoxGapProperty(),
      'Flex Box Containers Properties'),
  Topics('Justify Content', const JustifyContentPropertyFlex(),
      'Flex Box Containers Properties'),
  Topics('Align items', const AlignitemsPropertyFlex(),
      'Flex Box Containers Properties'),
  Topics('Align Content', const AlignContentPropertyFlex(),
      'Flex Box Containers Properties'),
  Topics('Flex Order', const FlexOrderProperty(), 'Flex Box Item Properties'),
  Topics('Flex Grow', const FlexGrowProperty(), 'Flex Box Item Properties'),
  Topics('Flex Shrink', const FlexShrinkProperty(), 'Flex Box Item Properties'),
  Topics('Flex Basis', const FlexBasisProperty(), 'Flex Box Item Properties'),
  Topics('Flex', const FlexProperty(), 'Flex Box Item Properties'),
  Topics('Align Self', const AlignSelfProperty(), 'Flex Box Item Properties'),
  Topics('Intro', const GridLayoutIntroProperty(), 'Grid Layout'),
  Topics('Display Grid and Inline Grid', const GridInlineGridProperty(),
      'Grid Containers Properties'),
  Topics('Grid Template Columns', const GridTemplateColumnsProperty(),
      'Grid Containers Properties'),
  Topics('Grid Template Rows', const GridTemplateRowsProperty(),
      'Grid Containers Properties'),
  Topics('Grid Templates', const GridTemplateProperty(),
      'Grid Containers Properties'),
  Topics('Grid Gap', const GridGapProperty(), 'Grid Containers Properties'),
  Topics('Justify-Items', const JustifyItemsProperty(),
      'Grid Containers Properties'),
  Topics(
      'Align-Items', const AlignItemsProperty(), 'Grid Containers Properties'),
  Topics(
      'Place-items', const PlaceitemsProperty(), 'Grid Containers Properties'),
  Topics('Justify-Content', const JustifyContentProperty(),
      'Grid Containers Properties'),
  Topics('Align-Content', const AlignContentProperty(),
      'Grid Containers Properties'),
  Topics('Place-Content', const PlaceontentProperty(),
      'Grid Containers Properties'),
  Topics(
      'Grid Auto Flow', const GridAutoFlowProperty(), 'Grid Items Properties'),
  Topics('Grid Column', const GridColumnProperty(), 'Grid Items Properties'),
  Topics('Grid Row', const GridRowProperty(), 'Grid Items Properties'),
  Topics('Justify-self', const JustifyselfProperty(), 'Grid Items Properties'),
  Topics('Align-self', const AlignselfProperty(), 'Grid Items Properties'),
  Topics('Place-self', const PlaceselfProperty(), 'Grid Items Properties'),
  Topics('Grid Template Area', const GridTemplateAreaProperty(),
      'Grid Items Properties'),
  Topics('Stylish Preferences', const StylishPreference(),
      'Grid Items Properties'),
];
