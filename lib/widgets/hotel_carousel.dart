import 'package:flutter/material.dart';
import 'package:travel_ui/models/hotel_model.dart';

class HotelCarousel extends StatelessWidget {
  Widget _buildItem(BuildContext context, int index) {
    Hotel hotel = hotels[index];

    return Container(
      margin: EdgeInsets.all(10.0),
      width: 240.0,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 15.0,
            child: Container(
              height: 120.0,
              width: 240.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      hotel.name,
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 2.8),
                    Text(
                      hotel.address,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 2.8),
                    Text(
                      '\$${hotel.price} / night',
                      style: TextStyle(
                        fontSize: 18.8,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 2.2),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                height: 180.0,
                width: 220.0,
                fit: BoxFit.cover,
                image: AssetImage(hotel.imageUrl),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Exclusive Hotels',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                child: Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                    letterSpacing: 1.0,
                  ),
                ),
                onTap: () {
                  print('See All');
                },
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          height: 300.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotels.length,
            itemBuilder: (context, index) => _buildItem(context, index),
          ),
        ),
      ],
    );
  }
}
