{ ... }:
{
  programs.joshuto.mimetype = {
    class = {
      audio_default = [
        { command = "mpv"; args = [ "--" ]; }
      ];
      image_default = [
        { command = "swayimg"; args = [ "-f --" ]; }
      ];
      text_default = [
        { command = "hx"; }
        { command = "bat"; args = [ "--paging=always" ]; }
      ];
      libreoffice_default = [
        { command = "libreoffice"; fork = true; silent = true; }
      ];
    };

    extensions = {
      # OFFICE
      odt."inherit" = "libreoffice_default";
      odf."inherit" = "libreoffice_default";
      ods."inherit" = "libreoffice_default";
      odp."inherit" = "libreoffice_default";
      doc."inherit" = "libreoffice_default";
      docx."inherit" = "libreoffice_default";
      xls."inherit" = "libreoffice_default";
      xlsx."inherit" = "libreoffice_default";
      ppt."inherit" = "libreoffice_default";
      pptx."inherit" = "libreoffice_default";
      pdf."inherit" = "libreoffice_default";

      "vnd.efi.iso.inherit" = [ # ISO
      	{ command = "popsicle-gtk"; fork = true; silent = true; }
      ];
      x-bittorrent."inherit" = [ # TORRENT
      	{ command = "transmission-gtk"; fork = true; silent = true; }
      ];

      # ARCHIVES
      "7z".app_list = [
        { command = "7z"; args = [ "x" ]; }
        { command = "file-roller"; fork = true; silent = true; }
      ];
      bz2.app_list = [
        { command = "tar"; args = [ "-xvjf" ]; }
        { command = "file-roller"; fork = true; silent = true; }
      ];
      gz.app_list = [
        { command = "tar"; args = [ "-xvzf" ]; }
        { command = "file-roller"; fork = true; silent = true; }
      ];
      tar.app_list = [
        { command = "tar"; args = [ "-xvf" ]; }
        { command = "file-roller"; fork = true; silent = true; }
      ];
      tgz.app_list = [
        { command = "tar"; args = [ "-xvzf" ]; }
        { command = "file-roller"; fork = true; silent = true; }
      ];
      rar.app_list = [
        { command = "unrar"; args = [ "x" ]; }
        { command = "file-roller"; fork = true; silent = true; }
      ];
      xz.app_list = [
        { command = "tar"; args = [ "-xvJf" ]; }
        { command = "file-roller"; fork = true; silent = true; }
      ];
      zip.app_list = [
        { command = "unzip"; }
        { command = "file-roller"; fork = true; silent = true; }
      ];

      ## audio formats
      aac."inherit" = "audio_default";
      ac3."inherit" = "audio_default";
      aiff."inherit" = "audio_default";
      ape."inherit" = "audio_default";
      dts."inherit" = "audio_default";
      flac."inherit" = "audio_default";
      m4a."inherit" = "audio_default";
      mp3."inherit" = "audio_default";
      oga."inherit" = "audio_default";
      ogg."inherit" = "audio_default";
      opus."inherit" = "audio_default";
      wav."inherit" = "audio_default";
      wv."inherit" = "audio_default";

      ## video formats
      avi."inherit" = "video_default";
      av1."inherit" = "video_default";
      flv."inherit" = "video_default";
      mkv."inherit" = "video_default";
      m4v."inherit" = "video_default";
      mov."inherit" = "video_default";
      mp4."inherit" = "video_default";
      ts."inherit" = "video_default";
      webm."inherit" = "video_default";
      wmv."inherit" = "video_default";

      ## text formats
      bib."inherit" = "text_default";
      build."inherit" = "text_default";
      c."inherit" = "text_default";
      cfg."inherit" = "text_default";
      cmake."inherit" = "text_default";
      conf."inherit" = "text_default";
      cpp."inherit" = "text_default";
      css."inherit" = "text_default";
      csv."inherit" = "text_default";
      cu."inherit" = "text_default";
      desktop."inherit" = "text_default";
      ebuild."inherit" = "text_default";
      eex."inherit" = "text_default";
      env."inherit" = "text_default";
      ex."inherit" = "text_default";
      exs."inherit" = "text_default";
      go."inherit" = "text_default";
      gpl."inherit" = "text_default";
      h."inherit" = "text_default";
      hpp."inherit" = "text_default";
      hs."inherit" = "text_default";
      ini."inherit" = "text_default";
      ipynb."inherit" = "text_default";
      java."inherit" = "text_default";
      jl."inherit" = "text_default";
      js."inherit" = "text_default";
      json."inherit" = "text_default";
      jsonc."inherit" = "text_default";
      kdl."inherit" = "text_default";
      kt."inherit" = "text_default";
      kvconfig."inherit" = "text_default";
      lock."inherit" = "text_default";
      log."inherit" = "text_default";
      lua."inherit" = "text_default";
      md."inherit" = "text_default";
      micro."inherit" = "text_default";
      ninja."inherit" = "text_default";
      nix."inherit" = "text_default";
      norg."inherit" = "text_default";
      org."inherit" = "text_default";
      po."inherit" = "text_default";
      pot."inherit" = "text_default";
      py."inherit" = "text_default";
      qmd."inherit" = "text_default";
      rasi."inherit" = "text_default";
      rkt."inherit" = "text_default";
      rktd."inherit" = "text_default";
      rproj."inherit" = "text_default";
      rs."inherit" = "text_default";
      rstheme."inherit" = "text_default";
      scm."inherit" = "text_default";
      scss."inherit" = "text_default";
      service."inherit" = "text_default";
      sh."inherit" = "text_default";
      socket."inherit" = "text_default";
      sql."inherit" = "text_default";
      srt."inherit" = "text_default";
      svelte."inherit" = "text_default";
      toml."inherit" = "text_default";
      tsx."inherit" = "text_default";
      txt."inherit" = "text_default";
      vim."inherit" = "text_default";
      xml."inherit" = "text_default";
      yaml."inherit" = "text_default";
      yml."inherit" = "text_default";
    };
  };
}
