.class Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MmsChoicePhoneNumbersContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneContactsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;


# direct methods
.method public constructor <init>(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "resolver"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    .line 363
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 365
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 14
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/16 v9, 0x80

    const/16 v8, 0x42f

    const/16 v7, 0x410

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 369
    packed-switch p1, :pswitch_data_e8

    .line 425
    :goto_b
    return-void

    .line 373
    :pswitch_c
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    invoke-static {v3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$300(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;)Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$ChoicePhoneNumbersContactsAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$ChoicePhoneNumbersContactsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 375
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    invoke-static {v3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$400(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 376
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    invoke-static {v3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$400(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 377
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$402(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 380
    :cond_2c
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_dd

    .line 381
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    invoke-static {v3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$500(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 382
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    invoke-static {v3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$600(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 383
    const/4 v3, -0x1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 385
    :goto_48
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 387
    new-instance v1, Landroid/database/CharArrayBuffer;

    invoke-direct {v1, v9}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 388
    .local v1, nameBuffer:Landroid/database/CharArrayBuffer;
    const/4 v3, 0x4

    invoke-interface {p3, v3, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 389
    iget-object v3, v1, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v3, v3, v5

    const/16 v4, 0x430

    if-lt v3, v4, :cond_a5

    iget-object v3, v1, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v3, v3, v5

    const/16 v4, 0x44f

    if-gt v3, v4, :cond_a5

    .line 390
    iget-object v3, v1, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v4, v3, v5

    add-int/lit8 v4, v4, -0x20

    int-to-char v4, v4

    aput-char v4, v3, v5

    .line 405
    :cond_70
    :goto_70
    new-instance v2, Landroid/database/CharArrayBuffer;

    invoke-direct {v2, v9}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 406
    .local v2, sortKeyBuffer:Landroid/database/CharArrayBuffer;
    const/16 v3, 0xb

    invoke-interface {p3, v3, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 407
    iget-object v3, v2, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v3, v3, v5

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 408
    .local v0, letter:C
    if-lt v0, v7, :cond_86

    if-le v0, v8, :cond_88

    .line 409
    :cond_86
    const/16 v0, 0x23

    .line 411
    :cond_88
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    invoke-static {v3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$600(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    invoke-static {v3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$500(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-static {v4, v5, v6}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    .line 391
    .end local v0           #letter:C
    .end local v2           #sortKeyBuffer:Landroid/database/CharArrayBuffer;
    :cond_a5
    iget-object v3, v1, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v3, v3, v5

    if-lt v3, v7, :cond_b1

    iget-object v3, v1, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v3, v3, v5

    if-le v3, v8, :cond_70

    :cond_b1
    const-string v3, "[\u4e00-\u9fa5]"

    iget-object v4, v1, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 393
    iget-object v3, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/16 v4, 0x23

    aput-char v4, v3, v5

    goto :goto_70

    .line 414
    .end local v1           #nameBuffer:Landroid/database/CharArrayBuffer;
    :cond_c8
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    invoke-static {v3, v6}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$702(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;Z)Z

    .line 415
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 416
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    invoke-static {v3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$800(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b

    .line 418
    :cond_dd
    iget-object v3, p0, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts$PhoneContactsHandler;->this$0:Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;

    invoke-static {v3}, Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;->access$800(Lcom/lewa/PIM/mms/choiceContacts/MmsChoicePhoneNumbersContacts;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b

    .line 369
    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method
