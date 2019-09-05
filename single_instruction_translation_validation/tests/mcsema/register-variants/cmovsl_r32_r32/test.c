void leaf() {
  __asm__("cmovsl %ecx, %ebx");
  }

void main() {
  leaf();
}