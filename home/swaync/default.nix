{ unstable, ... }: {
  services.swaync = {
    enable = true;
    package = unstable.swaynotificationcenter;

    style = ''
      @define-color cc-bg rgba(25, 25, 25, 0.7);
      @define-color noti-border-color rgba(255, 255, 255, 0.5);
      @define-color noti-bg rgba(25, 25, 25, 0.63);
      @define-color noti-bg-opaque rgb(25, 25, 25);
      @define-color noti-bg-darker rgb(15, 15, 15);
      @define-color noti-bg-hover rgb(35, 35, 35);
      @define-color noti-bg-hover-opaque rgb(35, 35, 35);

      .notification-row:last-child {
        margin-bottom: 7px;
      }

      .notification-row .notification-background {
        padding: 2px 10px;
      }

      .notification-row .notification-background .close-button {
        /* The notification Close Button */
        min-width: 18px;
        min-height: 18px;
      }

      .notification-row .notification-background .notification {
        /* The actual notification */
        border-radius: 2px;
        padding: 4px;
      }

      .notification-row .notification-background .notification .notification-default-action {
        /* The large action that also displays the notification summary and body */
        border-radius: 2px;
      }

      .notification-row .notification-background .notification .notification-default-action .notification-content .text-box .summary {
        /* Notification summary/title */
        font-size: 12px;
        padding-bottom: 2px;
      }

      .notification-row .notification-background .notification .notification-default-action .notification-content .text-box .time {
        /* Notification time-ago */
        font-size: 12px;
        font-weight: normal;
      }

      .notification-row .notification-background .notification .notification-default-action .notification-content .text-box .body {
        /* Notification body */
        font-size: 12px;
      }

      .notification-group .notification-group-headers .notification-group-header {
        font-size: 12px;
      }

      .control-center {
        border-radius: 2px;
      }

      .widget-title {
        font-size: 12px;
      }

      .widget-title > button {
        border-radius: 2px;
        font-size: 12px;
      }

      .widget-dnd {
        font-size: 12px;
      }

      .widget-label > label {
        font-size: 12px;
      }
    '';

    settings = {
      control-center-width = 400;
      notification-window-width = 350;
      timeout = 10;
      timeout-low = 5;
      timeout-critical = 15;
      positionY = "bottom";
    };
  };

  home.packages = with unstable; [
    libnotify
  ];
}
