.class public Lcom/droidhang/pay/util/DataProvider;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataProvider.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "record.db"

.field private static INSTANCE:Lcom/droidhang/pay/util/DataProvider; = null

.field private static final PARAM:[Ljava/lang/String;

.field private static final VERSION:I = 0x1

.field private static _context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/droidhang/pay/util/DataProvider;->PARAM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string v0, "record.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    return-void
.end method

.method public static getDP()Lcom/droidhang/pay/util/DataProvider;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/droidhang/pay/util/DataProvider;->INSTANCE:Lcom/droidhang/pay/util/DataProvider;

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/droidhang/pay/util/DataProvider;->INSTANCE:Lcom/droidhang/pay/util/DataProvider;

    .line 31
    :goto_0
    return-object v0

    .line 30
    :cond_0
    new-instance v0, Lcom/droidhang/pay/util/DataProvider;

    sget-object v1, Lcom/droidhang/pay/util/DataProvider;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/droidhang/pay/util/DataProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/droidhang/pay/util/DataProvider;->INSTANCE:Lcom/droidhang/pay/util/DataProvider;

    .line 31
    sget-object v0, Lcom/droidhang/pay/util/DataProvider;->INSTANCE:Lcom/droidhang/pay/util/DataProvider;

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sput-object p0, Lcom/droidhang/pay/util/DataProvider;->_context:Landroid/content/Context;

    .line 23
    new-instance v0, Lcom/droidhang/pay/util/DataProvider;

    sget-object v1, Lcom/droidhang/pay/util/DataProvider;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/droidhang/pay/util/DataProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/droidhang/pay/util/DataProvider;->INSTANCE:Lcom/droidhang/pay/util/DataProvider;

    .line 24
    return-void
.end method


# virtual methods
.method public checkBillID(Ljava/lang/String;)Z
    .locals 14
    .param p1, "billID"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/droidhang/pay/util/DataProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 42
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/droidhang/pay/util/DataProvider;->PARAM:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 43
    const/4 v10, 0x1

    .line 44
    .local v10, "empty":Z
    const-string v1, "record"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bill_id"

    aput-object v4, v2, v3

    const-string v3, "bill_id=?"

    sget-object v4, Lcom/droidhang/pay/util/DataProvider;->PARAM:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 52
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 53
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 54
    const/4 v10, 0x0

    .line 56
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 58
    :cond_1
    if-nez v10, :cond_2

    move v1, v12

    .line 67
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "empty":Z
    :goto_0
    return v1

    .line 61
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "empty":Z
    :cond_2
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 62
    .local v11, "vs":Landroid/content/ContentValues;
    const-string v1, "bill_id"

    invoke-virtual {v11, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "record"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v13

    .line 64
    goto :goto_0

    .line 66
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "empty":Z
    .end local v11    # "vs":Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    move v1, v13

    .line 67
    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 73
    const-string v0, "create table record(bill_id text not null);"

    .line 75
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    const-string v1, "CREATE INDEX IF NOT EXISTS index_bill_id ON record(bill_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 82
    return-void
.end method
