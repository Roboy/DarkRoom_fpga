//
// HTTPSession.h
//
// $Id: //poco/1.3/Net/include/Poco/Net/HTTPSession.h#5 $
//
// Library: Net
// Package: HTTP
// Module:  HTTPSession
//
// Definition of the HTTPSession class.
//
// Copyright (c) 2005-2006, Applied Informatics Software Engineering GmbH.
// and Contributors.
//
// Permission is hereby granted, free of charge, to any person or organization
// obtaining a copy of the software and accompanying documentation covered by
// this license (the "Software") to use, reproduce, display, distribute,
// execute, and transmit the Software, and to prepare derivative works of the
// Software, and to permit third-parties to whom the Software is furnished to
// do so, all subject to the following:
// 
// The copyright notices in the Software and this entire statement, including
// the above license grant, this restriction and the following disclaimer,
// must be included in all copies of the Software, in whole or in part, and
// all derivative works of the Software, unless such copies or derivative
// works are solely in the form of machine-executable object code generated by
// a source language processor.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
// SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
// FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
// ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.
//


#ifndef Net_HTTPSession_INCLUDED
#define Net_HTTPSession_INCLUDED


#include "Poco/Net/Net.h"
#include "Poco/Net/StreamSocket.h"
#include "Poco/Timespan.h"
#include "Poco/Exception.h"
#include <ios>


namespace Poco {
namespace Net {


class Net_API HTTPSession
	/// HTTPSession implements basic HTTP session management
	/// for both HTTP clients and HTTP servers.
	///
	/// HTTPSession implements buffering for HTTP connections, as well
	/// as specific support for the various HTTP stream classes.
	///
	/// This class can not be instantiated. HTTPClientSession or
	/// HTTPServerSession must be used instead.
{
public:
	void setKeepAlive(bool keepAlive);
		/// Sets the keep-alive flag for this session.
		///
		/// If the keep-alive flag is enabled, persistent
		/// HTTP/1.1 connections are supported.
		
	bool getKeepAlive() const;
		/// Returns the value of the keep-alive flag for
		/// this session.

	void setTimeout(const Poco::Timespan& timeout);
		/// Sets the timeout for the HTTP session.
		
	Poco::Timespan getTimeout() const;
		/// Returns the timeout for the HTTP session.

	bool connected() const;
		/// Returns true if the underlying socket is connected.

	void abort();
		/// Aborts a session in progress by shutting down
		/// and closing the underlying socket.
		
	const Poco::Exception* networkException() const;
		/// If sending or receiving data over the underlying
		/// socket connection resulted in an exception, a
		/// pointer to this exception is returned.
		/// 
		/// Otherwise, NULL is returned.

	enum
	{
		HTTP_PORT = 80
	};
	
	StreamSocket detachSocket();
		/// Detaches the socket from the session.
		///
		/// The socket is returned, and a new, uninitialized socket is
		/// attached to the session.
		
protected:
	HTTPSession();
		/// Creates a HTTP session using an
		/// unconnected stream socket.

	HTTPSession(const StreamSocket& socket);
		/// Creates a HTTP session using the
		/// given socket. The session takes ownership
		/// of the socket and closes it when it's no
		/// longer used.

	HTTPSession(const StreamSocket& socket, bool keepAlive);
		/// Creates a HTTP session using the
		/// given socket. The session takes ownership
		/// of the socket and closes it when it's no
		/// longer used.

	virtual ~HTTPSession();
		/// Destroys the HTTPSession and closes the
		/// underlying socket.

	int get();
		/// Returns the next byte in the buffer.
		/// Reads more data from the socket if there are
		/// no bytes left in the buffer.
		
	int peek();
		/// Peeks at the next character in the buffer.
		/// Reads more data from the socket if there are
		/// no bytes left in the buffer.
		
	virtual int read(char* buffer, std::streamsize length);
		/// Reads up to length bytes.
		///
		/// If there is data in the buffer, this data
		/// is returned. Otherwise, data is read from
		/// the socket to avoid unnecessary buffering.
	
	virtual int write(const char* buffer, std::streamsize length);
		/// Writes data to the socket.

	int receive(char* buffer, int length);
		/// Reads up to length bytes.
		
	int buffered() const;
		/// Returns the number of bytes in the buffer.

	StreamSocket& socket();
		/// Returns a reference to the underlying socket.
		
	void refill();
		/// Refills the internal buffer.
		
	virtual void connect(const SocketAddress& address);
		/// Connects the underlying socket to the given address
		/// and sets the socket's receive timeout.	
		
	void attachSocket(const StreamSocket& socket);
		/// Attaches a socket to the session, replacing the
		/// previously attached socket.

	void close();
		/// Closes the underlying socket.
		
	void setException(const Poco::Exception& exc);
		/// Stores a clone of the exception.
	
private:
	enum
	{
		HTTP_DEFAULT_TIMEOUT = 60000000
	};
	
	HTTPSession(const HTTPSession&);
	HTTPSession& operator = (const HTTPSession&);
	
	StreamSocket     _socket;
	char*            _pBuffer;
	char*            _pCurrent;
	char*            _pEnd;
	bool             _keepAlive;
	Poco::Timespan   _timeout;
	Poco::Exception* _pException;
	
	friend class HTTPStreamBuf;
	friend class HTTPHeaderStreamBuf;
	friend class HTTPFixedLengthStreamBuf;
	friend class HTTPChunkedStreamBuf;
};


//
// inlines
//
inline bool HTTPSession::getKeepAlive() const
{
	return _keepAlive;
}


inline Poco::Timespan HTTPSession::getTimeout() const
{
	return _timeout;
}


inline StreamSocket& HTTPSession::socket()
{
	return _socket;
}


inline const Poco::Exception* HTTPSession::networkException() const
{
	return _pException;
}


inline int HTTPSession::buffered() const
{
	return static_cast<int>(_pEnd - _pCurrent);
}


} } // namespace Poco::Net


#endif // Net_HTTPSession_INCLUDED
