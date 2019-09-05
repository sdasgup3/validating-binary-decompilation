void leaf() {
  __asm__("movswq %cx, %rbx");
  }

void main() {
  leaf();
}