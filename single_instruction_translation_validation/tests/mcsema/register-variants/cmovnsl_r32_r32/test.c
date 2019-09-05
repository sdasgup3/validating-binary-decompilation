void leaf() {
  __asm__("cmovnsl %ecx, %ebx");
  }

void main() {
  leaf();
}