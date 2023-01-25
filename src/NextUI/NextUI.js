export {
  NextUIProvider as nextUIProvider,
  Button as button,
  Switch as switch,
  Container as container,
  Row as row,
  Col as col,
  Spacer as spacer,
  Input as input,
  Textarea as textArea,
  Text as text,
  Link as link,
  Pagination as pagination,
  Loading as loading,
  useTheme as useTheme_,
  Navbar as navbar,
  Dropdown as dropdown,
  Avatar as avatar,
  Popover as popover,
} from "@nextui-org/react";

import {
  Grid,
  Card,
  NavBar,
  createTheme as createTheme_,
  Navbar,
  Button,
  Dropdown,
  Popover,
} from "@nextui-org/react";

export {
  ThemeProvider as nextThemesProvider,
  useTheme as useNextTheme_,
} from "next-themes";

export const themeClassName = (theme) => theme.className;
export const themeIsDark = (theme) => theme.isDark;
export const createTheme = (props) => () => createTheme_(props);
export const grid = Grid;
export const gridContainer = Grid.Container;

export const card = Card;
export const cardHeader = Card.Header;
export const cardBody = Card.Body;
export const cardFooter = Card.Footer;
export const cardDivider = Card.Divider;

export const navbarBrand = Navbar.Brand;
export const navbarContent = Navbar.Content;
export const navbarLink = Navbar.Link;
export const navbarItem = Navbar.Item;
export const navbarToggle = Navbar.Toggle;
export const navbarCollapseItem = Navbar.CollapseItem;
export const navbarCollapse = Navbar.Collapse;

export const buttonGroup = Button.Group;

export const dropdownButton = Dropdown.Button;
export const dropdownMenu = Dropdown.Menu;
export const dropdownItem = Dropdown.Item;
export const dropdownTrigger = Dropdown.Trigger;

export const popoverTrigger = Popover.Trigger;
export const popoverContent = Popover.Content;
