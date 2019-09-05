void leaf() {
  __asm__("movswl %cx, %ebx");
  }

void main() {
  leaf();
}