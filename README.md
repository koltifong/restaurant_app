# restaurant 

Frontend Mobile App

![image](https://github.com/koltifong/restaurant_app/assets/109425238/17834c03-f715-4b7d-b093-aa02284dccd9)

![image](https://github.com/koltifong/restaurant_app/assets/109425238/8025397e-a746-49ac-8c56-e8423d7ce32b)

![image](https://github.com/koltifong/restaurant_app/assets/109425238/5ae2d042-603d-4cd4-853e-103e47930f30)

Booking Calendar Mobile App

![image](https://github.com/koltifong/restaurant_app/assets/109425238/8b9c28e2-e16b-45ed-8dba-6b5bd4b96e5c)

Firebase Mobile App

![image](https://github.com/koltifong/restaurant_app/assets/109425238/7e8cf599-25ac-4f05-bff6-341097032e8c)

This is how the structure of the data looks like in the Firestore document:

```dart
  CollectionReference bookings = FirebaseFirestore.instance.collection('bookings');

  ///This is how can you get the reference to your data from the collection, and serialize the data with the help of the Firestore [withConverter]. This function would be in your repository.
  CollectionReference<SportBooking> getBookingStream({required String placeId}) {
    return bookings.doc(placeId).collection('bookings').withConverter<SportBooking>(
          fromFirestore: (snapshots, _) => SportBooking.fromJson(snapshots.data()!),
          toFirestore: (snapshots, _) => snapshots.toJson(),
        );
  }

  ///How you actually get the stream of data from Firestore with the help of the previous function
  ///note that this query filters are for my data structure, you need to adjust it to your solution.
  Stream<dynamic>? getBookingStreamFirebase(
    {required DateTime end, required DateTime start}) {
       return ApiRepository.
                        .getBookingStream(placeId: 'YOUR_DOC_ID')
                        .where('bookingStart', isGreaterThanOrEqualTo: start)
                        .where('bookingStart', isLessThanOrEqualTo: end)
                        .snapshots(),
  }

  ///After you fetched the data from firestore, we only need to have a list of datetimes from the bookings:
  List<DateTimeRange> convertStreamResultFirebase(
    {required dynamic streamResult}) {
    ///here you can parse the streamresult and convert to [List<DateTimeRange>]
    ///Note that this is dynamic, so you need to know what properties are available on your result, in our case the [SportBooking] has bookingStart and bookingEnd property
      List<DateTimeRange> converted = []
      for (var i = 0; i < streamResult.size; i++) {
        final item = streamResult.docs[i].data();
        converted.add(DateTimeRange(start: (item.bookingStart!), end: (item.bookingEnd!)));
      }
  return converted;
}

  ///This is how you upload data to Firestore
  Future<dynamic> uploadBookingFirebase(
    {required BookingService newBooking}) async {
    await bookings
        .doc('your id, or autogenerate')
        .collection('bookings')
        .add(newBooking.toJson())
        .then((value) => print("Booking Added"))
        .catchError((error) => print("Failed to add booking: $error"));
    }
  }


/**AFTER YOU HAVE EVERY HELPER FUNCTION YOU CAN PASS THESE TO YOUR BOOKINGCALENDAR */
BookingCalendar(
    bookingService: mockBookingService,
    convertStreamResultToDateTimeRanges: convertStreamResultFirebase,
    getBookingStream: getBookingStreamFirebase,
    uploadBooking: uploadBookingFirebase,
    uploadingWidget: const CircularProgressIndicator(),
    //... other customisation properties
),
```
