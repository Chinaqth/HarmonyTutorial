import { Size } from '@ohos/hypium'

export const PADDING_TITLE: Padding = {
  top: 20,
  left: 20,
  right: 20,
  bottom: 20
}

export const PADDING_SUBTITLE: Padding = {
  top: 20,
  left: 20,
  right: 20,
  bottom: 0
}

export const IMAGE_TITLE_SIZE: SizeOptions = {
  width: 30,
  height: 30
}

export function paddingVertical(vertical: number): Padding {
  return {
    top: vertical,
    bottom: vertical
  }
}

export function paddingHorizon(horizon: number): Padding {
  return {
    left: horizon,
    right: horizon
  }
}

export function padding(padding: number): Padding {
  return {
    left: padding,
    right: padding,
    top: padding,
    bottom: padding
  }
}

export const FONT_SIZE_TITLE: number = 20

export const FONT_SIZE_SUB_TITLE: number = 16

export const FONT_SIZE_BODY: number = 12

export const FULL_SCREEN_SIZE = '100%'

export const APP_BACKGROUND_COLOR = '#F1F3F5'