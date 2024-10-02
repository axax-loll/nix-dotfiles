{ ... }:
{
  xdg.configFile = with config.lib.stylix.colors; {
    # CONFIG FILE
    "qBittorrent/qBittorrent.conf".text = ''
      [AddNewTorrentDialog]
        Attached=false
        DialogSize=@Size(942 1014)
        DownloadPathHistory=
        Enabled=true
        RememberLastSavePath=false
        SavePathHistory=/home/megamozg/Downloads
        SplitterState=@ByteArray(\0\0\0\xff\0\0\0\x1\0\0\0\x2\0\0\x1\xc6\0\0\x1\x83\0\xff\xff\xff\xff\x1\0\0\0\x1\0)
        TopLevel=true
        TreeHeaderState="@ByteArray(\0\0\0\xff\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x6\x34\0\0\0\x3\0\0\0\x2\0\0\0\x64\0\0\0\x4\0\0\0\x64\0\0\0\x5\0\0\0\x64\0\0\x1,\0\0\0\x6\x1\x1\0\x1\0\0\0\0\0\0\0\0\0\0\0\0\x64\xff\xff\xff\xff\0\0\0\x81\0\0\0\0\0\0\0\x6\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\x3\xe8\0\0\0\0\x64)"
      [Application]
        FileLogger\Age=1
        FileLogger\AgeType=1
        FileLogger\Backup=true
        FileLogger\DeleteOld=true
        FileLogger\Enabled=true
        FileLogger\MaxSizeBytes=66560
        FileLogger\Path=/home/megamozg/.local/share/qBittorrent/logs
        GUI\Notifications\TorrentAdded=false
      [BitTorrent]
        Session\MaxActiveDownloads=1
        Session\MaxActiveTorrents=8
        Session\MaxActiveUploads=2
        Session\Port=37977
        Session\QueueingSystemEnabled=true
        Session\TorrentContentLayout=Subfolder
      [Core]
        AutoDeleteAddedTorrentFile=Never
      [GUI]
        DownloadTrackerFavicon=false
        Log\Enabled=false
        MainWindow\FiltersSidebarVisible=false
        StartUpWindowState=Normal
        UIThemeDialog\Size=@Size(718 559)
      [LegalNotice]
        Accepted=true
      [MainWindow]
        LastDir=/home/megamozg/Downloads
        geometry=@ByteArray(\x1\xd9\xd0\xcb\0\x3\0\0\0\0\0\0\0\0\0\0\0\0\ai\0\0\x3\xf5\0\0\0\0\0\0\0\0\0\0\a\x7f\0\0\x4\x37\0\0\0\0\x2\0\0\0\a\x80\0\0\0\0\0\0\0\0\0\0\ai\0\0\x3\xf5)
      [Meta]
        MigrationVersion=6
      [OptionsDialog]
        HorizontalSplitterSizes=119, 634
        LastViewedPage=4
        Size=@Size(779 591)
      [Preferences]
        Advanced\TrayIconStyle=MonoDark
        Advanced\useSystemIconTheme=true
        Bittorrent\CustomizeTrackersListUrl=https://ngosang.github.io/trackerslist/trackers_best.txt
        General\CloseToTray=false
        General\ExitConfirm=false
        General\Locale=en
        General\StatusbarDisplayed=false
        General\ToolbarDisplayed=false
      [RSS]
        AutoDownloader\DownloadRepacks=true
        AutoDownloader\SmartEpisodeFilter=s(\\d+)e(\\d+), (\\d+)x(\\d+), "(\\d{4}[.\\-]\\d{1,2}[.\\-]\\d{1,2})", "(\\d{1,2}[.\\-]\\d{1,2}[.\\-]\\d{4})"
      [TorrentProperties]
        CurrentTab=0
        Peers\qt5\PeerListState=@ByteArray(\0\0\0\xff\0\0\0\0\0\0\0\x1\0\0\0\x1\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x10@\x80\0\0\0\x2\0\0\0\x6\0\0\0\x64\0\0\0\xf\0\0\0\x64\0\0\x5x\0\0\0\x10\x1\x1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x64\xff\xff\xff\xff\0\0\0\x81\0\0\0\0\0\0\0\x10\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\x3\xe8\0\xff\xff\xff\xff)
        SplitterSizes="681,361"
        Trackers\qt5\TrackerListState=@ByteArray(\0\0\0\xff\0\0\0\0\0\0\0\x1\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x3 \0\0\0\b\x1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x64\xff\xff\xff\xff\0\0\0\x81\0\0\0\0\0\0\0\b\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\x3\xe8\0\0\0\0\x64)
        Visible=true
        qt5\FilesListState=@ByteArray(\0\0\0\xff\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x2X\0\0\0\x6\x1\x1\0\x1\0\0\0\0\0\0\0\0\0\0\0\0\x64\xff\xff\xff\xff\0\0\0\x81\0\0\0\0\0\0\0\x6\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\0\x64\0\0\0\x1\0\0\0\0\0\0\x3\xe8\0\0\0\0\x64)
      [TransferList]
        SubSortColumn=8
        SubSortOrder=0
        qt5\HeaderState=@ByteArray(\0\0\0\xff\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\x1\0\0\0\"\0\0\0\0\0\0\0\x1\0\0\0\x4\0\0\0\x5\0\0\0\x3\0\0\0\x2\0\0\0\a\0\0\0\b\0\0\0\t\0\0\0\n\0\0\0\v\0\0\0\f\0\0\0\r\0\0\0\xe\0\0\0\xf\0\0\0\x10\0\0\0\x11\0\0\0\x12\0\0\0\x13\0\0\0\x14\0\0\0\x15\0\0\0\x16\0\0\0\x17\0\0\0\x6\0\0\0\x18\0\0\0\x19\0\0\0\x1a\0\0\0\x1b\0\0\0\x1c\0\0\0\x1d\0\0\0\x1e\0\0\0\x1f\0\0\0 \0\0\0!\0\0\0\"\0\0\0\0\0\0\0\x1\0\0\0\x5\0\0\0\x4\0\0\0\x2\0\0\0\x3\0\0\0\x17\0\0\0\x6\0\0\0\a\0\0\0\b\0\0\0\t\0\0\0\n\0\0\0\v\0\0\0\f\0\0\0\r\0\0\0\xe\0\0\0\xf\0\0\0\x10\0\0\0\x11\0\0\0\x12\0\0\0\x13\0\0\0\x14\0\0\0\x15\0\0\0\x16\0\0\0\x18\0\0\0\x19\0\0\0\x1a\0\0\0\x1b\0\0\0\x1c\0\0\0\x1d\0\0\0\x1e\0\0\0\x1f\0\0\0 \0\0\0!\0\0\0\"\xa0\xfd\xff\xff\x3\0\0\0\x1b\0\0\0\x10\0\0\0\x64\0\0\0\x11\0\0\0\x64\0\0\0\x1e\0\0\0\x64\0\0\0\x1f\0\0\0\x64\0\0\0\x1c\0\0\0\x64\0\0\0\x1d\0\0\0\x64\0\0\0\x1a\0\0\0\x64\0\0\0\x1b\0\0\0\x64\0\0\0\x18\0\0\0\x64\0\0\0\x19\0\0\0\x64\0\0\0\x6\0\0\0\x64\0\0\0\a\0\0\0\x64\0\0\0 \0\0\0\x64\0\0\0!\0\0\0\x64\0\0\0\x3\0\0\0\x64\0\0\0\xe\0\0\0\x64\0\0\0\xf\0\0\0\x64\0\0\0\f\0\0\0\x64\0\0\0\r\0\0\0\x64\0\0\0\n\0\0\0\x64\0\0\0\v\0\0\0\x64\0\0\0\t\0\0\0\x64\0\0\0\x16\0\0\0\x64\0\0\0\x14\0\0\0\x64\0\0\0\x15\0\0\0\x64\0\0\0\x12\0\0\0\x64\0\0\0\x13\0\0\0\x64\0\0\x3Z\0\0\0\"\x1\x1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x64\xff\xff\xff\xff\0\0\0\x81\0\0\0\0\0\0\0\"\0\0\0+\0\0\0\x1\0\0\0\0\0\0\x1\x19\0\0\0\x1\0\0\0\0\0\0\0M\0\0\0\x1\0\0\0\0\0\0\0^\0\0\0\x1\0\0\0\0\0\0\0z\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0{\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0v\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\0\0\0\0\0\x1\0\0\0\0\0\0\x3\xe8\0\0\0\0\x64)
    '';

    # COLORSCHEME
    "qBittorrent/themes/default/config.json".text = ''
      {
        "colors.dark": {
          "Log.BannedPeer": "#b66467",
          "Log.Critical": "#b66467",
          "Log.Info": "#8da3b9",
          "Log.TimeStamp": "#bbb6b6",
          "Log.Warning": "#d9bc8c",
          "TransferList.CheckingDownloading": "#8c977d",
          "TransferList.CheckingResumeData": "#8c977d",
          "TransferList.CheckingUploading": "#8c977d",
          "TransferList.Downloading": "#d9bc8c",
          "TransferList.DownloadingMetadata": "#d9bc8c",
          "TransferList.Error": "#b66467",
          "TransferList.ForcedDownloading": "#d9bc8c",
          "TransferList.ForcedDownloadingMetadata": "#d9bc8c",
          "TransferList.ForcedUploading": "#d9bc8c",
          "TransferList.MissingFiles": "#b66467",
          "TransferList.Moving": "#8aa6a2",
          "TransferList.PausedDownloading": "#a988b0",
          "TransferList.PausedUploading": "#a988b0",
          "TransferList.QueuedDownloading": "#d9bc8c",
          "TransferList.QueuedUploading": "#d9bc8c",
          "TransferList.StalledDownloading": "#8c977d",
          "TransferList.StalledUploading": "#bbb6b6",
          "TransferList.Uploading": "#bbb6b6"
        },
        "version": 2
      }
      '';
  };
}
