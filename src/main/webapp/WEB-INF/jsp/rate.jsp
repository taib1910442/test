<form action="process_review.php" method="post">
    <div class="rate">
        <input type="radio" id="star5" name="rate" value="5" />
        <label for="star5" title="text">5 stars</label>
        <input type="radio" id="star4" name="rate" value="4" />
        <label for="star4" title="text">4 stars</label>
        <input type="radio" id="star3" name="rate" value="3" />
        <label for="star3" title="text">3 stars</label>
        <input type="radio" id="star2" name="rate" value="2" />
        <label for="star2" title="text">2 stars</label>
        <input type="radio" id="star1" name="rate" value="1" />
        <label for="star1" title="text">1 star</label>
    </div>
    <div>
        <label for="comment">Cảm Nghĩ:</label>
        <textarea id="comment" name="comment" rows="4" cols="50"></textarea>
    </div>
    <br>
    <input type="submit" value="Gửi Đánh Giá">
</form>