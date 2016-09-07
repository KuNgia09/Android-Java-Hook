.class public abstract Landroid/support/v4/widget/CursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CursorAdapter.java"

# interfaces
.implements Landroid/support/v4/widget/CursorFilter$CursorFilterClient;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/CursorAdapter$1;,
        Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;,
        Landroid/support/v4/widget/CursorAdapter$ChangeObserver;
    }
.end annotation


# static fields
.field public static final FLAG_AUTO_REQUERY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_REGISTER_CONTENT_OBSERVER:I = 0x2


# instance fields
.field protected mAutoRequery:Z

.field protected mChangeObserver:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

.field protected mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorFilter:Landroid/support/v4/widget/CursorFilter;

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mDataValid:Z

.field protected mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field protected mRowIDColumn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "flags"    # I

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "autoRequery"    # Z

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 138
    if-eqz p3, :cond_a

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 139
    return-void

    .line 138
    :cond_a
    const/4 v0, 0x2

    goto :goto_6
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 316
    .local v0, "old":Landroid/database/Cursor;
    if-eqz v0, :cond_9

    .line 317
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 319
    :cond_9
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 367
    if-nez p1, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 201
    iget-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 202
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 204
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 262
    iget-boolean v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v1, :cond_1d

    .line 263
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 265
    if-nez p2, :cond_1b

    .line 266
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Landroid/support/v4/widget/CursorAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, "v":Landroid/view/View;
    :goto_13
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 273
    .end local v0    # "v":Landroid/view/View;
    :goto_1a
    return-object v0

    .line 268
    :cond_1b
    move-object v0, p2

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_13

    .line 273
    .end local v0    # "v":Landroid/view/View;
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursorFilter:Landroid/support/v4/widget/CursorFilter;

    if-nez v0, :cond_b

    .line 405
    new-instance v0, Landroid/support/v4/widget/CursorFilter;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/CursorFilter;-><init>(Landroid/support/v4/widget/CursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursorFilter:Landroid/support/v4/widget/CursorFilter;

    .line 407
    :cond_b
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursorFilter:Landroid/support/v4/widget/CursorFilter;

    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 212
    iget-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_10

    .line 213
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 214
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 216
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getItemId(I)J
    .registers 5
    .param p1, "position"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 224
    iget-boolean v2, p0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1a

    .line 225
    iget-object v2, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 226
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 231
    :cond_1a
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 244
    iget-boolean v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-nez v1, :cond_c

    .line 245
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "this should only be called when the cursor is valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_c
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 248
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t move cursor to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_2d
    if-nez p2, :cond_3f

    .line 252
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Landroid/support/v4/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 256
    .local v0, "v":Landroid/view/View;
    :goto_37
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 257
    return-object v0

    .line 254
    .end local v0    # "v":Landroid/view/View;
    :cond_3f
    move-object v0, p2

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_37
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method init(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "flags"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 164
    and-int/lit8 v2, p3, 0x1

    if-ne v2, v0, :cond_45

    .line 165
    or-int/lit8 p3, p3, 0x2

    .line 166
    iput-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->mAutoRequery:Z

    .line 170
    :goto_b
    if-eqz p2, :cond_48

    .line 171
    .local v0, "cursorPresent":Z
    :goto_d
    iput-object p2, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 172
    iput-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 173
    iput-object p1, p0, Landroid/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    .line 174
    if-eqz v0, :cond_4a

    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    :goto_1b
    iput v1, p0, Landroid/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    .line 175
    and-int/lit8 v1, p3, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4c

    .line 176
    new-instance v1, Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/CursorAdapter$ChangeObserver;-><init>(Landroid/support/v4/widget/CursorAdapter;)V

    iput-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    .line 177
    new-instance v1, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;

    invoke-direct {v1, p0, v3}, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroid/support/v4/widget/CursorAdapter;Landroid/support/v4/widget/CursorAdapter$1;)V

    iput-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 183
    :goto_30
    if-eqz v0, :cond_44

    .line 184
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 185
    :cond_3b
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_44

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 187
    :cond_44
    return-void

    .line 168
    .end local v0    # "cursorPresent":Z
    :cond_45
    iput-boolean v1, p0, Landroid/support/v4/widget/CursorAdapter;->mAutoRequery:Z

    goto :goto_b

    :cond_48
    move v0, v1

    .line 170
    goto :goto_d

    .line 174
    .restart local v0    # "cursorPresent":Z
    :cond_4a
    const/4 v1, -0x1

    goto :goto_1b

    .line 179
    :cond_4c
    iput-object v3, p0, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    .line 180
    iput-object v3, p0, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_30
.end method

.method protected init(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "autoRequery"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    if-eqz p3, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 161
    return-void

    .line 160
    :cond_7
    const/4 v0, 0x2

    goto :goto_3
.end method

.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 296
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onContentChanged()V
    .registers 2

    .prologue
    .line 447
    iget-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 449
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 451
    :cond_18
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 396
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_b

    .line 397
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 400
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_a
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .registers 2
    .param p1, "filterQueryProvider"    # Landroid/widget/FilterQueryProvider;

    .prologue
    .line 436
    iput-object p1, p0, Landroid/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    .line 437
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 4
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 332
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_6

    .line 333
    const/4 v0, 0x0

    .line 354
    :goto_5
    return-object v0

    .line 335
    :cond_6
    iget-object v0, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 336
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1c

    .line 337
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 338
    :cond_13
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 340
    :cond_1c
    iput-object p1, p0, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 341
    if-eqz p1, :cond_41

    .line 342
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 343
    :cond_29
    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 344
    :cond_32
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    .line 345
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 347
    invoke-virtual {p0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 349
    :cond_41
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    .line 350
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 352
    invoke-virtual {p0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetInvalidated()V

    goto :goto_5
.end method
