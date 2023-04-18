<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <div class="container my-4">
    <div class="jumbotron text-center">
      <h1 class="display-4">:( not found!</h1>
      <p class="lead">Looks like what you're looking for is not available.</p>
      <hr class="my-4">
      <p>You can check out to our Shop section for the latest and newly added products.</p>
      <form action="shop" method="post">
      	<input type="hidden" value="vegetablesfruits" name="category">
      	<button type="submit" class="btn btn-primary btn-lg">Go to Shop</button>
      </form>
    </div>
  </div>
  <br>