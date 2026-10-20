declare module '@apiverve/pdfpagenumbers' {
  export interface pdfpagenumbersOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface pdfpagenumbersResponse {
    status: string;
    error: string | null;
    data: PDFPageNumbersData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface PDFPageNumbersData {
      pdfName:       null | string;
      pageCount:     number | null;
      numberedPages: number | null;
      position:      null | string;
      format:        null | string;
      startAt:       number | null;
      lastLabel:     null | string;
      size:          number | null;
      expires:       number | null;
      downloadURL:   null | string;
  }

  export default class pdfpagenumbersWrapper {
    constructor(options: pdfpagenumbersOptions);

    execute(callback: (error: any, data: pdfpagenumbersResponse | null) => void): Promise<pdfpagenumbersResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: pdfpagenumbersResponse | null) => void): Promise<pdfpagenumbersResponse>;
    execute(query?: Record<string, any>): Promise<pdfpagenumbersResponse>;
  }
}
