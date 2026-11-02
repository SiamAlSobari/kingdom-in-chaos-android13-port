.class public Lcom/wwcd/util/DialogHelper;
.super Ljava/lang/Object;
.source "DialogHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/wwcd/util/DialogHelper;->setNeverAskMeAgain(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static isShowTips(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "preferenceName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-static {p0, p1, v0}, Lcom/wwcd/util/preference/DefaultPreferenceUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static setNeverAskMeAgain(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "preferenceName"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/wwcd/util/preference/DefaultPreferenceUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 47
    return-void
.end method

.method public static final show2ButtonDialog(Landroid/content/Context;IIIILcom/wwcd/util/DialogAction;Lcom/wwcd/util/DialogAction;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "message"    # I
    .param p2, "title"    # I
    .param p3, "button1"    # I
    .param p4, "button2"    # I
    .param p5, "action1"    # Lcom/wwcd/util/DialogAction;
    .param p6, "action2"    # Lcom/wwcd/util/DialogAction;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/wwcd/util/DialogHelper;->show2ButtonDialog(Landroid/content/Context;Ljava/lang/CharSequence;IIILcom/wwcd/util/DialogAction;Lcom/wwcd/util/DialogAction;)V

    .line 54
    return-void
.end method

.method public static final show2ButtonDialog(Landroid/content/Context;IIIILcom/wwcd/util/DialogAction;Lcom/wwcd/util/DialogAction;I)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "message"    # I
    .param p2, "title"    # I
    .param p3, "button1"    # I
    .param p4, "button2"    # I
    .param p5, "action1"    # Lcom/wwcd/util/DialogAction;
    .param p6, "action2"    # Lcom/wwcd/util/DialogAction;
    .param p7, "icon"    # I

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/wwcd/util/DialogHelper;->show2ButtonDialog(Landroid/content/Context;Ljava/lang/CharSequence;IIILcom/wwcd/util/DialogAction;Lcom/wwcd/util/DialogAction;I)V

    .line 194
    return-void
.end method

.method public static final show2ButtonDialog(Landroid/content/Context;Ljava/lang/CharSequence;IIILcom/wwcd/util/DialogAction;Lcom/wwcd/util/DialogAction;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "title"    # I
    .param p3, "button1"    # I
    .param p4, "button2"    # I
    .param p5, "action1"    # Lcom/wwcd/util/DialogAction;
    .param p6, "action2"    # Lcom/wwcd/util/DialogAction;

    .prologue
    const/4 v3, 0x0

    .line 59
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 63
    if-nez p5, :cond_0

    .line 64
    invoke-virtual {v1, p3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    :goto_0
    if-nez p6, :cond_1

    .line 75
    invoke-virtual {v1, p4, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    :goto_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 86
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 87
    return-void

    .line 66
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :cond_0
    new-instance v2, Lcom/wwcd/util/DialogHelper$3;

    invoke-direct {v2, p5}, Lcom/wwcd/util/DialogHelper$3;-><init>(Lcom/wwcd/util/DialogAction;)V

    invoke-virtual {v1, p3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 77
    :cond_1
    new-instance v2, Lcom/wwcd/util/DialogHelper$4;

    invoke-direct {v2, p6}, Lcom/wwcd/util/DialogHelper$4;-><init>(Lcom/wwcd/util/DialogAction;)V

    invoke-virtual {v1, p4, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public static final show2ButtonDialog(Landroid/content/Context;Ljava/lang/CharSequence;IIILcom/wwcd/util/DialogAction;Lcom/wwcd/util/DialogAction;I)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "title"    # I
    .param p3, "button1"    # I
    .param p4, "button2"    # I
    .param p5, "action1"    # Lcom/wwcd/util/DialogAction;
    .param p6, "action2"    # Lcom/wwcd/util/DialogAction;
    .param p7, "icon"    # I

    .prologue
    const/4 v3, 0x0

    .line 199
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 202
    const/4 v2, -0x1

    if-eq p7, v2, :cond_0

    .line 203
    invoke-virtual {v1, p7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 206
    :cond_0
    if-nez p5, :cond_1

    .line 207
    invoke-virtual {v1, p3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    :goto_0
    if-nez p6, :cond_2

    .line 218
    invoke-virtual {v1, p4, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    :goto_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 229
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 230
    return-void

    .line 209
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :cond_1
    new-instance v2, Lcom/wwcd/util/DialogHelper$9;

    invoke-direct {v2, p5}, Lcom/wwcd/util/DialogHelper$9;-><init>(Lcom/wwcd/util/DialogAction;)V

    invoke-virtual {v1, p3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 220
    :cond_2
    new-instance v2, Lcom/wwcd/util/DialogHelper$10;

    invoke-direct {v2, p6}, Lcom/wwcd/util/DialogHelper$10;-><init>(Lcom/wwcd/util/DialogAction;)V

    invoke-virtual {v1, p4, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public static final show2ButtonDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/wwcd/util/DialogAction;Lcom/wwcd/util/DialogAction;I)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "button1"    # Ljava/lang/CharSequence;
    .param p4, "button2"    # Ljava/lang/CharSequence;
    .param p5, "action1"    # Lcom/wwcd/util/DialogAction;
    .param p6, "action2"    # Lcom/wwcd/util/DialogAction;
    .param p7, "icon"    # I

    .prologue
    const/4 v3, 0x0

    .line 239
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 240
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 241
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 242
    const/4 v2, -0x1

    if-eq p7, v2, :cond_0

    .line 243
    invoke-virtual {v1, p7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 246
    :cond_0
    if-nez p5, :cond_1

    .line 247
    invoke-virtual {v1, p3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 257
    :goto_0
    if-nez p6, :cond_2

    .line 258
    invoke-virtual {v1, p4, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 268
    :goto_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 269
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 270
    return-void

    .line 249
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :cond_1
    new-instance v2, Lcom/wwcd/util/DialogHelper$11;

    invoke-direct {v2, p5}, Lcom/wwcd/util/DialogHelper$11;-><init>(Lcom/wwcd/util/DialogAction;)V

    invoke-virtual {v1, p3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 260
    :cond_2
    new-instance v2, Lcom/wwcd/util/DialogHelper$12;

    invoke-direct {v2, p6}, Lcom/wwcd/util/DialogHelper$12;-><init>(Lcom/wwcd/util/DialogAction;)V

    invoke-virtual {v1, p4, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public static final showButtonDialog(Landroid/content/Context;Ljava/lang/String;IIILcom/wwcd/util/DialogAction;Lcom/wwcd/util/DialogAction;I)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # I
    .param p3, "button1"    # I
    .param p4, "button2"    # I
    .param p5, "action1"    # Lcom/wwcd/util/DialogAction;
    .param p6, "action2"    # Lcom/wwcd/util/DialogAction;
    .param p7, "icon"    # I

    .prologue
    .line 102
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-static/range {v0 .. v7}, Lcom/wwcd/util/DialogHelper;->showButtonDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/wwcd/util/DialogAction;Lcom/wwcd/util/DialogAction;I)V

    .line 104
    return-void
.end method

.method public static final showButtonDialog(Landroid/content/Context;Ljava/lang/String;IILcom/wwcd/util/DialogAction;I)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # I
    .param p3, "button1"    # I
    .param p4, "action1"    # Lcom/wwcd/util/DialogAction;
    .param p5, "icon"    # I

    .prologue
    .line 91
    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/wwcd/util/DialogHelper;->showButtonDialog(Landroid/content/Context;Ljava/lang/String;IIILcom/wwcd/util/DialogAction;Lcom/wwcd/util/DialogAction;I)V

    .line 92
    return-void
.end method

.method public static final showButtonDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/wwcd/util/DialogAction;Lcom/wwcd/util/DialogAction;I)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "button1"    # I
    .param p4, "button2"    # I
    .param p5, "action1"    # Lcom/wwcd/util/DialogAction;
    .param p6, "action2"    # Lcom/wwcd/util/DialogAction;
    .param p7, "icon"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 109
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    if-eq p7, v3, :cond_0

    .line 111
    invoke-virtual {v1, p7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 113
    :cond_0
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 116
    if-nez p5, :cond_2

    .line 117
    invoke-virtual {v1, p3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    :goto_0
    if-eq p4, v3, :cond_1

    .line 128
    if-nez p6, :cond_3

    .line 129
    invoke-virtual {v1, p4, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 142
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 143
    return-void

    .line 119
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :cond_2
    new-instance v2, Lcom/wwcd/util/DialogHelper$5;

    invoke-direct {v2, p5}, Lcom/wwcd/util/DialogHelper$5;-><init>(Lcom/wwcd/util/DialogAction;)V

    invoke-virtual {v1, p3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 131
    :cond_3
    new-instance v2, Lcom/wwcd/util/DialogHelper$6;

    invoke-direct {v2, p6}, Lcom/wwcd/util/DialogHelper$6;-><init>(Lcom/wwcd/util/DialogAction;)V

    invoke-virtual {v1, p4, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public static final showButtonDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/wwcd/util/DialogAction;I)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "button1"    # I
    .param p4, "action1"    # Lcom/wwcd/util/DialogAction;
    .param p5, "icon"    # I

    .prologue
    .line 96
    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/wwcd/util/DialogHelper;->showButtonDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/wwcd/util/DialogAction;Lcom/wwcd/util/DialogAction;I)V

    .line 97
    return-void
.end method

.method public static final showButtonDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wwcd/util/DialogAction;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "button"    # Ljava/lang/String;
    .param p4, "action"    # Lcom/wwcd/util/DialogAction;

    .prologue
    .line 233
    const-string v4, ""

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v7}, Lcom/wwcd/util/DialogHelper;->show2ButtonDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/wwcd/util/DialogAction;Lcom/wwcd/util/DialogAction;I)V

    .line 234
    return-void
.end method

.method public static final showInfoDialog(Landroid/content/Context;Landroid/text/Spannable;IIILcom/wwcd/util/DialogAction;Lcom/wwcd/util/DialogAction;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "message"    # Landroid/text/Spannable;
    .param p2, "title"    # I
    .param p3, "button1"    # I
    .param p4, "button2"    # I
    .param p5, "action1"    # Lcom/wwcd/util/DialogAction;
    .param p6, "action2"    # Lcom/wwcd/util/DialogAction;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xa

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 148
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 150
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 152
    .local v1, "scroll":Landroid/widget/ScrollView;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 153
    .local v2, "tv":Landroid/widget/TextView;
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 154
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 155
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 157
    invoke-virtual {v2, v6, v4, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 158
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 160
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 162
    if-nez p5, :cond_1

    .line 163
    invoke-virtual {v0, p3, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    :goto_0
    if-eq p4, v5, :cond_0

    .line 174
    if-nez p6, :cond_2

    .line 175
    invoke-virtual {v0, p4, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 187
    return-void

    .line 165
    :cond_1
    new-instance v3, Lcom/wwcd/util/DialogHelper$7;

    invoke-direct {v3, p5}, Lcom/wwcd/util/DialogHelper$7;-><init>(Lcom/wwcd/util/DialogAction;)V

    invoke-virtual {v0, p3, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 177
    :cond_2
    new-instance v3, Lcom/wwcd/util/DialogHelper$8;

    invoke-direct {v3, p6}, Lcom/wwcd/util/DialogHelper$8;-><init>(Lcom/wwcd/util/DialogAction;)V

    invoke-virtual {v0, p4, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public static final showTipsWithNerverAskMeDialog(Landroid/content/Context;ILjava/lang/String;III)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "preferenceName"    # Ljava/lang/String;
    .param p3, "tips"    # I
    .param p4, "gotIt"    # I
    .param p5, "nerverAsk"    # I

    .prologue
    .line 18
    invoke-static {p0, p2}, Lcom/wwcd/util/DialogHelper;->isShowTips(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const/4 v5, 0x0

    new-instance v6, Lcom/wwcd/util/DialogHelper$1;

    invoke-direct {v6, p0, p2}, Lcom/wwcd/util/DialogHelper$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v6}, Lcom/wwcd/util/DialogHelper;->show2ButtonDialog(Landroid/content/Context;IIIILcom/wwcd/util/DialogAction;Lcom/wwcd/util/DialogAction;)V

    .line 26
    :cond_0
    return-void
.end method

.method public static final showTipsWithNerverAskMeDialog(Landroid/content/Context;ILjava/lang/String;IILcom/wwcd/util/DialogAction;I)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "preferenceName"    # Ljava/lang/String;
    .param p3, "tips"    # I
    .param p4, "gotIt"    # I
    .param p5, "action"    # Lcom/wwcd/util/DialogAction;
    .param p6, "nerverAsk"    # I

    .prologue
    .line 31
    invoke-static {p0, p2}, Lcom/wwcd/util/DialogHelper;->isShowTips(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v6, Lcom/wwcd/util/DialogHelper$2;

    invoke-direct {v6, p0, p2}, Lcom/wwcd/util/DialogHelper$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p6

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/wwcd/util/DialogHelper;->show2ButtonDialog(Landroid/content/Context;IIIILcom/wwcd/util/DialogAction;Lcom/wwcd/util/DialogAction;)V

    .line 39
    :cond_0
    return-void
.end method
