.class public Lcom/wwcd/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field public static final NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field private static final digits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/wwcd/util/StringUtil;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 241
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wwcd/util/StringUtil;->digits:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "postfix"    # Ljava/lang/String;

    .prologue
    .line 79
    if-eqz p1, :cond_2

    .line 80
    if-eqz p2, :cond_1

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_0
    :goto_0
    return-object p0

    .line 83
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 84
    :cond_2
    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static buildTickerMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x20

    .line 260
    move-object v1, p0

    .line 262
    .local v1, "displayAddress":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v1, :cond_2

    const-string v4, ""

    :goto_0
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 267
    .local v2, "offset":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 268
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 274
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 275
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 279
    .local v3, "spanText":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 282
    return-object v3

    .line 262
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "offset":I
    .end local v3    # "spanText":Landroid/text/SpannableString;
    :cond_2
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static convert2Array(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 287
    .local v1, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 288
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_0
    return-object v1
.end method

.method public static equals(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 157
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    .local v1, "strValue":I
    if-ne v1, p1, :cond_0

    const/4 v2, 0x1

    .line 160
    .end local v1    # "strValue":I
    :cond_0
    :goto_0
    return v2

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v1, Lcom/wwcd/util/StringUtil;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 34
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 37
    .end local p0    # "address":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static extractNumbers(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {p0}, Lcom/wwcd/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const-string v0, ""

    .line 238
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\\D"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 255
    invoke-static {p0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J
    .param p3, "fullFormat"    # Z

    .prologue
    .line 325
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 326
    .local v2, "then":Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 327
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 328
    .local v1, "now":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 331
    const v0, 0x80b00

    .line 336
    .local v0, "format_flags":I
    iget v3, v2, Landroid/text/format/Time;->year:I

    iget v4, v1, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_1

    .line 337
    or-int/lit8 v0, v0, 0x14

    .line 349
    :goto_0
    if-eqz p3, :cond_0

    .line 350
    or-int/lit8 v0, v0, 0x11

    .line 353
    :cond_0
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 338
    :cond_1
    iget v3, v2, Landroid/text/format/Time;->yearDay:I

    iget v4, v1, Landroid/text/format/Time;->yearDay:I

    if-eq v3, v4, :cond_2

    .line 340
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 343
    :cond_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 100
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDirByPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 295
    if-nez p0, :cond_0

    .line 296
    const/4 v1, 0x0

    .line 306
    :goto_0
    return-object v1

    .line 298
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 299
    const-string v1, ""

    goto :goto_0

    .line 302
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 303
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 304
    const-string v1, ""

    goto :goto_0

    .line 306
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDisplayNameByPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 310
    if-nez p0, :cond_0

    .line 311
    const/4 v1, 0x0

    .line 321
    :goto_0
    return-object v1

    .line 313
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 314
    const-string v1, ""

    goto :goto_0

    .line 317
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 318
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 319
    const-string v1, ""

    goto :goto_0

    .line 321
    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLanguageForPaypal(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 58
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "language":Ljava/lang/String;
    const-string v2, "zh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    const-string v2, "zh_HK"

    .line 74
    :goto_0
    return-object v2

    .line 61
    :cond_0
    const-string v2, "ja"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    const-string v2, "ja_JP"

    goto :goto_0

    .line 63
    :cond_1
    const-string v2, "de"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    const-string v2, "de_DE"

    goto :goto_0

    .line 65
    :cond_2
    const-string v2, "es"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    const-string v2, "es_ES"

    goto :goto_0

    .line 67
    :cond_3
    const-string v2, "fr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 68
    const-string v2, "fr_FR"

    goto :goto_0

    .line 69
    :cond_4
    const-string v2, "it"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 70
    const-string v2, "it_IT"

    goto :goto_0

    .line 71
    :cond_5
    const-string v2, "pl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 72
    const-string v2, "pl_PL"

    goto :goto_0

    .line 74
    :cond_6
    const-string v2, "en_US"

    goto :goto_0
.end method

.method public static getOmission(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "maxNum"    # I

    .prologue
    .line 185
    const-string v0, ""

    .line 187
    .local v0, "omission":Ljava/lang/String;
    invoke-static {p0}, Lcom/wwcd/util/StringUtil;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_0
    :goto_0
    return-object v0

    .line 191
    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/String;III)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "ch"    # I
    .param p2, "start"    # I
    .param p3, "ocurrence"    # I

    .prologue
    .line 221
    move v0, p2

    .line 222
    .local v0, "from":I
    const/4 v2, -0x1

    .line 223
    .local v2, "ret":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 224
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 225
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    move v3, v2

    .line 230
    .end local v2    # "ret":I
    .local v3, "ret":I
    :goto_1
    return v3

    .line 228
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :cond_0
    add-int/lit8 v0, v2, 0x1

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 230
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_1
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    const/4 v2, 0x0

    .line 53
    :goto_0
    return v2

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/wwcd/util/StringUtil;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "s":Ljava/lang/String;
    sget-object v2, Lcom/wwcd/util/Regex;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 53
    .local v0, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 91
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 95
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static joinString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .param p0, "conjunction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 145
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs joinString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "conjunction"    # Ljava/lang/String;
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 200
    :cond_0
    const/4 v2, 0x0

    .line 207
    :goto_0
    return-object v2

    .line 202
    :cond_1
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 204
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 207
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static newString([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 108
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/wwcd/util/StringUtil;->newString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newString([BII)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 113
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 114
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 7
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 176
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    :goto_0
    return v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/wwcd/logger/LoggerFactory;->logger:Lcom/wwcd/logger/Logger;

    const-class v3, Lcom/wwcd/util/StringUtil;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not int: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/wwcd/logger/Logger;->error(Ljava/lang/Class;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 166
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 170
    :goto_0
    return-wide v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/wwcd/logger/LoggerFactory;->logger:Lcom/wwcd/logger/Logger;

    const-class v4, Lcom/wwcd/util/StringUtil;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not long: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/wwcd/logger/Logger;->error(Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 170
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static stringToHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 212
    .local v3, "strlen":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 214
    const-string v4, "%04x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "hexString":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "hexString":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .local v2, "builder":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 247
    .local v1, "b":B
    and-int/lit16 v5, v1, 0xff

    .line 248
    .local v5, "ub":I
    sget-object v6, Lcom/wwcd/util/StringUtil;->digits:[C

    shr-int/lit8 v7, v5, 0x4

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    sget-object v6, Lcom/wwcd/util/StringUtil;->digits:[C

    and-int/lit8 v7, v5, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    .end local v1    # "b":B
    .end local v5    # "ub":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static valueOfInt(II)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I
    .param p1, "length"    # I

    .prologue
    .line 121
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wwcd/util/StringUtil;->valueOfString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOfLong(JI)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # J
    .param p2, "length"    # I

    .prologue
    .line 125
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/wwcd/util/StringUtil;->valueOfString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOfString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "i"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 130
    .local v2, "size":I
    if-lt v2, p1, :cond_0

    .line 139
    .end local p0    # "i":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 133
    .restart local p0    # "i":Ljava/lang/String;
    :cond_0
    sub-int v1, p1, v2

    .line 134
    .local v1, "leadingZeroCount":I
    new-array v3, v1, [C

    .line 135
    .local v3, "zeros":[C
    const/16 v4, 0x30

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
