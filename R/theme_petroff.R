#' A theme for petroff lab
#'
#' @param base_family The font family to be used, defaults to Avenir
#' @param title_size Title size, defaults to 22
#' @param facet_text_size Facet text size, defaults to 12
#' @param facet_fill Color of facet rectangle, defaults to "#7fcdbb"
#' @param fill Background element rectangles, defaults to "transparent"
#' @param colour Colour option for key, defaults to "transparent"
#' @param title_position Title position, defaults to 0.5
#' @param axis_title_size Axis title size, defaults to 14
#' @param axis_tick_size Size of ticks on axes, defaults to 12
#' @param face Typeface parameter, defaults to bold
#' @param text_color Color of text, defaults to black
#' @return A customized plot with Soo's theme!
#' @example ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
#'     geom_point() +
#'     theme_petroff()
#'
#' @export


theme_petroff <- function(base_family = "sans", title_size = 22, facet_text_size = 14,
                          facet_fill = "#C0C0C0", fill = "transparent", title_position = 0.5,
                          axis_title_size = 14, axis_tick_size = 16, face = "bold", text_color = "black" ) {

  theme_bw(base_size = 14, base_family= base_family) %+replace%
    theme(
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        plot.title = element_text(size = title_size, face = face, hjust = title_position),
        axis.title = element_text(size = axis_title_size, face = face, color = text_color),
        axis.text = element_text(size = axis_tick_size, face = face, color = text_color),
        axis.ticks = element_line(size = 1),
        axis.line = element_line(color = text_color, size = 1),
        strip.text = element_text(size = facet_text_size, face = face),
        strip.background = element_rect(colour = "black", fill = facet_fill)
    )

}
