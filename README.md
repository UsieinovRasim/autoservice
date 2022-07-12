# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
-#        %td= client.amount.positive? ? (client.amount / client.fees.active.try(:tax).to_i).floor : 0
-#        %td= client.amount
-#        %td= client.fees.active.try(:tax)
-#        %td
-#          = link_to fa_icon("solid user-pen"), edit_client_path(client), { class: 'btn-sm btn-outline-warning' }
-#          = link_to fa_icon("solid user-minus"), client_path(client), { class: 'btn-sm btn-outline-danger', method: :delete, data: { confirm: 'Вы уверены, что хотите удалить?' } }
-#          = link_to "Редактировать", edit_order_path(order)
-#          = link_to "Удалить", order_path(order), { method: :delete }
-#= will_paginates(@clients)
