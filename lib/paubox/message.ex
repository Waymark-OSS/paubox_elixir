defmodule Paubox.Message do
  @enforce_keys [:subject, :from]
  defstruct recipients: nil,
            bcc: nil,
            cc: nil,
            subject: nil,
            from: nil,
            reply_to: nil,
            allow_non_tls: false,
            force_secure_notification: false,
            text_content: nil,
            html_content: nil,
            attachments: nil,
            # This is to support the List-Unsubscribe header
            # https://docs.paubox.com/docs/paubox_email_api/messages/#list-unsubscribe
            unsubscribe: nil

  @type t :: %__MODULE__{
          recipients: [String.t()] | nil,
          bcc: [String.t()] | nil,
          cc: [String.t()] | nil,
          subject: String.t(),
          from: String.t(),
          reply_to: String.t() | nil,
          allow_non_tls: boolean(),
          force_secure_notification: boolean(),
          text_content: String.t() | nil,
          html_content: String.t() | nil,
          attachments: [Paubox.Attachment.t()] | nil,
          unsubscribe: String.t() | nil
        }
end
