using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.PDFPageNumbers
{
    /// <summary>
    /// Query options for the PDF Page Numbers API
    /// </summary>
    public class PDFPageNumbersQueryOptions
    {
        /// <summary>
        /// The PDF file to number (up to 10 MB and 300 pages), or a public PDF URL
        /// </summary>
        [JsonProperty("pdf")]
        public string Pdf { get; set; }

        /// <summary>
        /// Where to place the number
        /// </summary>
        [JsonProperty("position")]
        public string Position { get; set; }

        /// <summary>
        /// Font size in points, from 6 to 36
        /// </summary>
        [JsonProperty("fontSize")]
        public double? FontSize { get; set; }

        /// <summary>
        /// Label template containing {page}, and optionally {total}, such as Page {page} of {total}
        /// </summary>
        [JsonProperty("format")]
        public string Format { get; set; }

        /// <summary>
        /// Number for the first numbered page
        /// </summary>
        [JsonProperty("startAt")]
        public int? StartAt { get; set; }

        /// <summary>
        /// Leave the first page (a cover) unnumbered
        /// </summary>
        [JsonProperty("skipFirst")]
        public bool? SkipFirst { get; set; }
    }
}
